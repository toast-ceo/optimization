
function [ DVH_PTV ]= get_DVH_PTV(PTV,x_beam);



x_ax= 0:0.1:70;
PTV_dummy = PTV*x_beam(:);

Dummy_t = hist(PTV_dummy,x_ax);
DVH_t = fliplr(cumsum(fliplr(Dummy_t)));
DVH_PTV = DVH_t/max(DVH_t);


% if sig==1
%     figure(1);
%     plot(x_perc,DVH_t); hold on;
%     xlim([0 100])
%     grid on; hold off;
%     legend('PTV') %'OAR5'); %,'OAR6'); %,'Tuning');
% end
% % -------------------------------
