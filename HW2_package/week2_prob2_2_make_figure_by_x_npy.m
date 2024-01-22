x = readNPY(".\week2\xk_prob2_dasihohoho.npy");
mat = load("C:\Users\Desktop\Desktop\2023MED9098\week2\hw2_prob2.mat");
A = mat.A;
dvh_ptv = get_DVH_PTV(A, x);


x_ax= 0:0.1:70;
plot(x_ax, dvh_ptv);
xlim([0 100])