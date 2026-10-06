function y = fir_filter_hdl(x)
%#codegen
% VLSI & FPGA Co-Design
% Fixed-Point FIR Filter
% MATLAB R2024b -> HDL Coder -> Verilog

% FIR Filter:
% Fs = 1000 Hz
% Fc = 100 Hz
% Filter Order = 15
% Total taps = 16

b = fi([ ...
   -0.001708984375 ...
   -0.00238037109375 ...
    0.00000000000000 ...
    0.01068115234375 ...
    0.028778076171875 ...
    0.049468994140625 ...
    0.06402587890625 ...
    0.0697021484375 ...
    0.06402587890625 ...
    0.049468994140625 ...
    0.028778076171875 ...
    0.01068115234375 ...
    0.00000000000000 ...
   -0.00238037109375 ...
   -0.001708984375 ...
    0.00000000000000], ...
    1, 16, 15);

persistent delay_line;

if isempty(delay_line)
    delay_line = fi(zeros(1,16), 1, 16, 15);
end

% Shift delay line
for k = 16:-1:2
    delay_line(k) = delay_line(k-1);
end

% Current input sample
delay_line(1) = x;

% FIR accumulation
acc = fi(0, 1, 40, 30);

for k = 1:16
    product = fi(b(k) * delay_line(k), 1, 40, 30);
    acc = fi(acc + product, 1, 40, 30);
end

% Output
y = fi(acc, 1, 16, 15);

end
