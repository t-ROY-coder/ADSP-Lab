% Author => TANUMON ROY/174259

clc;
clear all;
close all;

% EXP-3:

x1 = [0,1,0,1];
subplot(3,1,1);
stem(x1);
title({'TANUMON ROY - 174259  // Exp-3', 'X1(n)'});
grid on;
x2 = [1,2,1,2];
subplot(3,1,2);
stem(x2);
title('X2(n)');
grid on;
N = length(x1);

for n = 0:N-1
  
  y(n+1) = 0;
  
  for k = 0:N-1
    
    i = mod((n-k),N);
    
    if i<0
      i = i+N;
    end
    
    y(n+1) = y(n+1)+x2(k+1)*x1(i+1);
  end
end

disp('Circular Conv. of x1 and x2 is y = ');
disp(y);

n1 = 0:N-1;
subplot(3,1,3);
stem(n1, y);
title('Circular Conv. Output: Y(n)');
grid on;

print('plot-exp3.png')