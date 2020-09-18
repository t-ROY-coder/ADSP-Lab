% Author => TANUMON ROY/174259

clc;
clear all;
close all;

% EXP-4 (Linear Convolution):

h1 = [0,1,0,1];
h2 = [1,2,1,2];
x = [1,2,3,4];
N = length(x);

% Commutative Property:

y1 = linConv(x, h1)
y2 = linConv(h1, x)

if y1==y2
  disp('Commutative Property is proved');
else
  disp('Commutative Property is not proved');
endif

% Distributive Property:

y3 = linConv(x, (h1 + h2))
y4 = (linConv(x, h1) + linConv(x, h2))

if y3==y4
  disp('Distributive Property is proved');
else
  disp('Distributive Property is not proved');
endif

% Associative Property:

y5 = linConv(x, linConv(h1, h2))
y6 = linConv(linConv(x, h1), h2)

if y5==y6
  disp('Associative Property is proved');
else
  disp('Associative Property is not proved');
endif