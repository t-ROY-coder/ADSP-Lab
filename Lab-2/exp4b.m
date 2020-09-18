% Author => TANUMON ROY/174259

clc;
clear all;
close all;

% EXP-4 (Circular Convolution):

h1 = [0,1,0,1];
h2 = [1,2,1,2];
x = [1,2,3,4];
N = length(x);

% Commutative Property:

y1 = circConv(x, h1)
y2 = circConv(h1, x)

if y1==y2
  disp('Commutative Property is proved');
else
  disp('Commutative Property is not proved');
endif

% Distributive Property:

y1 = circConv(x, (h1+h2))
y2 = circConv(x, h1) + circConv(x, h2)

if y1==y2
  disp('Distributive Property is proved');
else
  disp('Distributive Property is not proved');
endif

% Associative Property:

y1 = circConv(x, circConv(h1, h2))
y2 = circConv(circConv(x, h1), h2)

if y1==y2
  disp('Associative Property is proved');
else
  disp('Associative Property is not proved');
endif