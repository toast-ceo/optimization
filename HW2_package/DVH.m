x_1 = readNPY("xk_with_inequality_constraint.npy");
x_2 = readNPY("xk_without_inequality_constraint.npy");
mat = load("hw2_prob2.mat");
A = mat.A;
dvh_ptv_1 = get_DVH_PTV(A, x_1);
dvh_ptv_2 = get_DVH_PTV(A, x_2);

plot(dvh_ptv_1);

hold on

plot(dvh_ptv_2);

hold off
