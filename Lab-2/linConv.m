function[y] = linConv(x1, x2)

l1 = length(x1);
l2 = length(x2);
l = l1+l2-1;

X=zeros(1,l);
H=zeros(1,l);
X(1:l1)=x1;
H(1:l2)=x2;

for i = 1:l
  y(i) = 0;
  for j = 1:i
    y(i) = y(i)+X(j)*H(i-j+1);
  endfor
endfor
