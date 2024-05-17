
% 변수 할당
x_10_10 = readNPY("./result/xk_with_inequality_constraint_t1_0_it10000.npy");


x_without = readNPY("./result/xk_without_inequality_constraint.npy");

mat = load("hw2_prob2.mat");
A = mat.A;


% DVH
dvh_ptv_x_10_10 = get_DVH_PTV(A, x_10_10);

dvh_ptv_x_without = get_DVH_PTV(A, x_without);

figure(1)
plot(dvh_ptv_x_without, 'LineWidth',2, 'LineStyle','-'); hold on; 
plot(dvh_ptv_x_10_10, 'LineWidth', 2, "LineStyle",":"); hold on; 
plot(dvh_ptv_x_10_15,'LineWidth', 2, "LineStyle","-."); hold on; 
plot(dvh_ptv_x_10_20,'LineWidth', 1, "LineStyle","--"); hold on; 
hold off;
legend("without","t= 1.0 iter=10e3","t= 1.0 iter=15e3","t= 1.0 iter=20e3")

figure(2)
plot(dvh_ptv_x_without, 'LineWidth',2, 'LineStyle','-'); hold on; 
plot(dvh_ptv_x_12_10, 'LineWidth', 2, "LineStyle",":"); hold on; 
plot(dvh_ptv_x_12_15,'LineWidth', 2, "LineStyle","-."); hold on; 
plot(dvh_ptv_x_12_20,'LineWidth', 1, "LineStyle","--"); hold on; 
hold off;
legend("without","t= 1.2 iter=10e3","t= 1.2 iter=15e3","t= 1.2 iter=20e3")


figure(3)
plot(dvh_ptv_x_without, 'LineWidth',2, 'LineStyle','-'); hold on; 
plot(dvh_ptv_x_14_10, 'LineWidth', 2, "LineStyle",":"); hold on; 
plot(dvh_ptv_x_14_15,'LineWidth', 2, "LineStyle","-."); hold on; 
plot(dvh_ptv_x_14_20,'LineWidth', 1, "LineStyle","--"); hold on; 
hold off;
legend("without","t= 1.4 iter=10e3","t= 1.4 iter=15e3","t= 1.4 iter=20e3")


figure(4)
plot(dvh_ptv_x_without, 'LineWidth',2, 'LineStyle','-'); hold on; 
plot(dvh_ptv_x_16_10, 'LineWidth', 2, "LineStyle",":"); hold on; 
plot(dvh_ptv_x_16_15,'LineWidth', 2, "LineStyle","-."); hold on; 
plot(dvh_ptv_x_16_20,'LineWidth', 1, "LineStyle","--"); hold on; 
hold off;
legend("without","t= 1.6 iter=10e3","t= 1.6 iter=15e3","t= 1.6 iter=20e3")

figure(5)
plot(dvh_ptv_x_without, 'LineWidth',2, 'LineStyle','-'); hold on; 
plot(dvh_ptv_x_18_10, 'LineWidth', 2, "LineStyle",":"); hold on; 
plot(dvh_ptv_x_18_15,'LineWidth', 2, "LineStyle","-."); hold on; 
plot(dvh_ptv_x_18_20,'LineWidth', 1, "LineStyle","--"); hold on; 
hold off;
legend("without","t= 1.8 iter=10e3","t= 1.8 iter=15e3","t= 1.8 iter=20e3")


figure(6)
plot(dvh_ptv_x_without, 'LineWidth',2, 'LineStyle','-'); hold on; 
plot(dvh_ptv_x_20_10, 'LineWidth', 2, "LineStyle",":"); hold on; 
plot(dvh_ptv_x_20_15,'LineWidth', 2, "LineStyle","-."); hold on; 
plot(dvh_ptv_x_20_20,'LineWidth', 1, "LineStyle","--"); hold on; 
hold off;
legend("without","t= 2.0 iter=10e3","t= 2.0 iter=15e3","t= 2.0 iter=20e3")


% iter = 10e3_all
figure(7)
plot(dvh_ptv_x_without, 'LineWidth',2); hold on; 
plot(dvh_ptv_x_10_10,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_12_10,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_14_10,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_16_10,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_18_10,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_20_10,'LineWidth', 1 ); hold on; 
hold off;
legend("without", "t= 1.0 iter=10e3","t= 1.2 iter=10e3","t= 1.4 iter=10e3", "t= 1.6 iter=10e3", "t= 1.8 iter=10e3", "t= 2.0 iter=10e3");
% iter = 15e3_all
figure(8)
plot(dvh_ptv_x_without, 'LineWidth',2); hold on; 
plot(dvh_ptv_x_10_15,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_12_15,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_14_15,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_16_15,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_18_15,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_20_15,'LineWidth', 1 ); hold on; 
hold off;
legend("without", "t= 1.0 iter=15e3","t= 1.2 iter=15e3", ...
    "t= 1.4 iter=15e3", "t= 1.6 iter=15e3", "t= 1.8 iter=15e3", "t= 2.0 iter=15e3");
% iter = 20e3_all
figure(9)
plot(dvh_ptv_x_without, 'LineWidth',2); hold on; 
plot(dvh_ptv_x_10_20,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_12_20,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_14_20,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_16_20,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_18_20,'LineWidth', 1 ); hold on; 
plot(dvh_ptv_x_20_20,'LineWidth', 1 ); hold on; 
hold off;
legend("without", "t= 1.0 iter=20e3","t= 1.2 iter=20e3","t= 1.4 iter=20e3", "t= 1.6 iter=20e3", "t= 1.8 iter=20e3", "t= 2.0 iter=20e3");



