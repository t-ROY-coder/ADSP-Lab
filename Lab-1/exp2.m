% Author => TANUMON ROY/174259

clc;
clear all;
close all;

% EXP-2: SAMPLING THEOREM

tfinal=0.05;
t=0:0.00005:tfinal;
fd=150;

%define analog signal for comparison
xt=cos(2*pi*fd*t);

%condition for undersampling
fs1=1.3*fd;
n1=0:1/fs1:tfinal;
xn=cos(2*pi*n1*fd);
subplot(3,1,1);
plot(t,xt,'b',n1,xn,'r*-');
title({'TANUMON ROY - 174259 // Exp-2', 'Undersampling plot'});
xlabel('time');
ylabel('amplitude');
grid on;

%condition for Nyquist plot
fs2=2*fd;
n2=0:1/fs2:tfinal;
xn=cos(2*pi*fd*n2);
subplot(3,1,2);
plot(t,xt,'b',n2,xn,'r*-');
title('Nyquist plot');
xlabel('time');
ylabel('amplitude');
grid on;

%condition for oversampling
fs3=5*fd;
n3=0:1/fs3:tfinal;
xn=cos(2*pi*fd*n3);
subplot(3,1,3);
plot(t,xt,'b',n3,xn,'r*-');
title('Oversampling plot');
xlabel('time');
ylabel('amplitude');
legend('analog','discrete');
grid on;

print('plot-exp2.png')