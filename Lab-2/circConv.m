function[y] = circConv(x1, x2)
N = length(x1);
for n = 0:N-1
  y(n+1) = 0;
  for k = 0:N-1
    i = mod((n-k),N);
    if i<0
      i = i+1;
    endif
    y(n+1) = y(n+1)+x2(k+1)*x1(i+1);
  endfor
endfor
