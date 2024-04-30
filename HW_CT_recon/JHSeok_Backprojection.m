fid = fopen('proj_assignment.raw','r+');

Projection = fread(fid,[367,360],'float32');

fclose(fid);

N = floor(size(Projection,1)/(sqrt(2))); %45도 각도일때 367pixel이므로 루트2로 나누어야 원래 영상의 넓이가 나옴

[Projection,H] = filterProjections(Projection, 'ram-lak', N); %filtering

theta = 0:359;
theta = pi*theta/180; %cos, sin 좌표이므로 한바퀴 하기 위해서 라디안으로 변환

center = floor((N + 1)/2);
xleft = -center + 1;
x = (1:N) - 1 + xleft;
x = repmat(x, N, 1);

ytop = center - 1;
y = (N:-1:1).' - N + ytop;
y = repmat(y, 1, N);

len = size(Projection,1);
ctrIdx = round(len/2);

costheta = cos(theta);
sintheta = sin(theta);

% Allocate memory for the image
img = zeros(N,N);

for i=1:length(theta)
    proj = Projection(:,i);
    taxis = (1:size(Projection,1)) - ctrIdx;
    t = x.*costheta(i) + y.*sintheta(i);
    projContrib = interp1(taxis,proj,t(:));
    img = img + reshape(projContrib,N,N);
end

imshow(img,[])
%%
function [p,H] = filterProjections(p_in, filter, d)

p = p_in;

% Design the filter
len = size(p,1);
H = designFilter(filter, len, d);

if strcmpi(filter, 'none')
    return;
end

p(length(H),1)=0;  % Zero pad projections

% In the code below, I continuously reuse the array p so as to
% save memory.  This makes it harder to read, but the comments
% explain what is going on.

p = fft(p);               % p holds fft of projections

p = bsxfun(@times, p, H); % faster than for-loop

p = ifft(p,'symmetric');  % p is the filtered projections

p(len+1:end,:) = [];      % Truncate the filtered projections
%----------------------------------------------------------------------

%======================================================================
function filt = designFilter(filter, len, d)
% Returns the Fourier Transform of the filter which will be
% used to filter the projections
%
% INPUT ARGS:   filter - either the string specifying the filter
%               len    - the length of the projections
%               d      - the fraction of frequencies below the nyquist
%                        which we want to pass
%
% OUTPUT ARGS:  filt   - the filter to use on the projections


order = max(64,2^nextpow2(2*len));

if strcmpi(filter, 'none')
    filt = ones(1, order);
    return;
end

% First create a bandlimited ramp filter (Eqn. 61 Chapter 3, Kak and
% Slaney) - go up to the next highest power of 2.

n = 0:(order/2); % 'order' is always even. 
filtImpResp = zeros(1,(order/2)+1); % 'filtImpResp' is the bandlimited ramp's impulse response (values for even n are 0)
filtImpResp(1) = 1/4; % Set the DC term 
filtImpResp(2:2:end) = -1./((pi*n(2:2:end)).^2); % Set the values for odd n
filtImpResp = [filtImpResp filtImpResp(end-1:-1:2)]; 
filt = 2*real(fft(filtImpResp)); 
filt = filt(1:(order/2)+1);

w = 2*pi*(0:size(filt,2)-1)/order;   % frequency axis up to Nyquist

switch filter
    case 'ram-lak'
        % Do nothing
    case 'shepp-logan'
        % be careful not to divide by 0:
        filt(2:end) = filt(2:end) .* (sin(w(2:end)/(2*d))./(w(2:end)/(2*d)));
    case 'cosine'
        filt(2:end) = filt(2:end) .* cos(w(2:end)/(2*d));
    case 'hamming'
        filt(2:end) = filt(2:end) .* (.54 + .46 * cos(w(2:end)/d));
    case 'hann'
        filt(2:end) = filt(2:end) .*(1+cos(w(2:end)./d)) / 2;
    otherwise
        error(message('images:iradon:invalidFilter'))
end

filt(w>pi*d) = 0;                      % Crop the frequency response
filt = [filt' ; filt(end-1:-1:2)'];    % Symmetry of the filter
end
end