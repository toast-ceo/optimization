
% 변수 할당
without_H_without_logb = readNPY("./result/without_H_without_logb.npy");
without_H_with_logb = readNPY("./result/without_H_with_logb.npy");
% x_nH_nG_logb = readNPY("./nH_nG_logb.npy");
% x_H_nG_logb = readNPY("./H_nG_logb.npy");

mat = load("hw2_prob2.mat");
A = mat.A;


% DVH
dvh_without_H_without_logb = get_DVH_PTV(A, without_H_without_logb);
dvh_without_H_with_logb = get_DVH_PTV(A, without_H_with_logb);
% dvh_ptv_x_nH_nG_logb = get_DVH_PTV(A, x_nH_nG_logb);
% dvh_ptv_x_H_nG_logb = get_DVH_PTV(A, x_H_nG_logb);

figure(1) 
hold on;

% 첫 번째 플롯
plot(dvh_without_H_without_logb, 'LineWidth', 2, 'LineStyle', '-', 'Color', [0 0 1]); % 파란색 실선
% 두 번째 플롯
plot(dvh_without_H_with_logb, 'LineWidth', 2, 'LineStyle', '--', 'Color', [1 0 0]); % 빨간색 점선
% % 세 번째 플롯
% plot(dvh_ptv_x_nH_nG_logb, 'LineWidth', 2, 'LineStyle', ':', 'Color', [0 1 0]); % 녹색 점선
% % 네 번째 플롯
% plot(dvh_ptv_x_H_nG_logb, 'LineWidth', 2, 'LineStyle', '-.', 'Color', [0 0 0]); % 검은색 대시-점선

% 라벨 및 범례 추가
legend({'dvh_without_H_without_logb', 'dvh_without_H_with_logb'}, 'Location', 'best');

hold off;