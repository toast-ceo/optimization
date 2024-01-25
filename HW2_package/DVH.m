
% 변수 할당
x_10_10 = readNPY("./result/xk_with_inequality_constraint_t1_0_it10000.npy");
x_10_15 = readNPY("./result/xk_with_inequality_constraint_t1_0_it15000.npy");
x_10_20 = readNPY("./result/xk_with_inequality_constraint_t1_0_it20000.npy");

x_12_10 = readNPY("/result/xk_with_inequality_constraint_t1_2_it10000.npy");
x_12_15 = readNPY("/result/xk_with_inequality_constraint_t1_2_it15000.npy");
x_12_20 = readNPY("/result/xk_with_inequality_constraint_t1_2_it20000.npy");

x_14_10 = readNPY("/result/xk_with_inequality_constraint_t1_4_it10000.npy");
x_14_15 = readNPY("/result/xk_with_inequality_constraint_t1_4_it15000.npy");
x_14_20 = readNPY("/result/xk_with_inequality_constraint_t1_4_it20000.npy");

x_16_10 = readNPY("/result/xk_with_inequality_constraint_t1_6_it10000.npy");
x_16_15 = readNPY("/result/xk_with_inequality_constraint_t1_6_it15000.npy");
x_16_20 = readNPY("/result/xk_with_inequality_constraint_t1_6_it20000.npy");

x_18_10 = readNPY("/result/xk_with_inequality_constraint_t1_8_it10000.npy");
x_18_15 = readNPY("/result/xk_with_inequality_constraint_t1_8_it15000.npy");
x_18_20 = readNPY("/result/xk_with_inequality_constraint_t1_8_it20000.npy");

x_20_10 = readNPY("/result/xk_with_inequality_constraint_t2_0_it10000.npy");
x_20_15 = readNPY("/result/xk_with_inequality_constraint_t2_0_it15000.npy");
x_20_20 = readNPY("/result/xk_with_inequality_constraint_t2_0_it20000.npy");

x_without = readNPY("hw2_prob2_without.npy")

mat = load("hw2_prob2.mat");
A = mat.A;


% DVH
dvh_ptv_x_10_10 = get_DVH_PTV(A, x_10_10);
dvh_ptv_x_10_15 = get_DVH_PTV(A, x_10_15);
dvh_ptv_x_10_20 = get_DVH_PTV(A, x_10_20);

dvh_ptv_x_12_10 = get_DVH_PTV(A, x_12_10);
dvh_ptv_x_12_15 = get_DVH_PTV(A, x_12_15);
dvh_ptv_x_12_20 = get_DVH_PTV(A, x_12_20);

dvh_ptv_x_14_10 = get_DVH_PTV(A, x_14_10);
dvh_ptv_x_14_15 = get_DVH_PTV(A, x_14_15);
dvh_ptv_x_14_20 = get_DVH_PTV(A, x_14_20);

dvh_ptv_x_16_10 = get_DVH_PTV(A, x_16_10);
dvh_ptv_x_16_15 = get_DVH_PTV(A, x_16_15);
dvh_ptv_x_16_20 = get_DVH_PTV(A, x_16_20);

dvh_ptv_x_18_10 = get_DVH_PTV(A, x_18_10);
dvh_ptv_x_18_15 = get_DVH_PTV(A, x_18_15);
dvh_ptv_x_18_20 = get_DVH_PTV(A, x_18_20);

dvh_ptv_x_20_10 = get_DVH_PTV(A, x_20_10);
dvh_ptv_x_20_15 = get_DVH_PTV(A, x_20_15);
dvh_ptv_x_20_20 = get_DVH_PTV(A, x_20_20);


plot(dvh_ptv_1);

hold on

plot(dvh_ptv_2);

hold off

legend("with inequality constraint","without inequality constraint" )
