x = readNPY("xk_withou_inequality_constraint.npy");
mat = load("hw2_prob2.mat");
A = mat.A;
dvh_ptv = get_DVH_PTV(A, x);


x_ax= 0:0.1:70;
plot(x_ax, dvh_ptv);
xlim([0 100])
