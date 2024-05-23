
% 변수 할당
x_H = readNPY("./x_H.npy");
x_nH = readNPY("./x_nH.npy");
mat = load("hw2_prob2.mat");
A = mat.A;


% DVH
dvh_ptv_x_H = get_DVH_PTV(A, x_H);

dvh_ptv_x_nH = get_DVH_PTV(A, x_nH);

figure(1)
plot(dvh_ptv_x_H, 'LineWidth',2, 'LineStyle','-'); hold on; 
plot(dvh_ptv_x_nH, 'LineWidth', 2, "LineStyle",":"); hold on; 

hold off;
legend("without","t= 1.0 iter=10e3","t= 1.0 iter=15e3","t= 1.0 iter=20e3")