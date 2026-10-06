function fir_filter_hdl_tb
% Test Bench for FIR Filter HDL Design

clear fir_filter_hdl;

% Generate input samples
N = 100;
n = 0:N-1;

x = fi(0.5*sin(2*pi*n/20), 1, 16, 15);

% Output
y = fi(zeros(1,N), 1, 16, 15);

% Run FIR filter sample by sample
for k = 1:N
    y(k) = fir_filter_hdl(x(k));
end

% Display results
disp('FIR HDL MATLAB Test Bench Completed');

% Plot input and output
figure;

plot(double(x));
hold on;
plot(double(y));

grid on;
xlabel('Sample');
ylabel('Amplitude');
title('FIR Filter MATLAB HDL Test Bench');
legend('Input','Output');

end