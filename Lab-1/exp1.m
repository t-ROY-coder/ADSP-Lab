% Author => TANUMON ROY/174259

clc;
clear all;
close all;

% EXP-1: DISCRETE PLOTS

% Ramp Function
x1 = 0:1:10;
y1 = 2*x1;
subplot(3,1,1);
stem(x1, y1);
title({'TANUMON ROY - 174259 // Exp-1', 'Ramp Function'});
grid on;

% Parabolic Function
x2 = 0:1:10;
y2 = x1.*x1;
subplot(3,1,2);
stem(x2, y2);
title('Parabolic Function');
grid on;

% Sinusoidal Function
x2 = 0:1:10;
y2 = sin(x1);
x_cont = 0:0.1:10;
y_cont = sin(x_cont);
subplot(3,1,3);
plot(x_cont, y_cont);
stem(x2, y2);
hold;
plot(x_cont, y_cont, 'r--');
title('Sinusoidal Function');
grid on;

print('plot-exp1.png')
