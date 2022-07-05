clc
clear
close all

z{1,1} = @(x1,x2,x3) 2*x1 + x2 +2*x3^2 -5  ;
z{2,1} = @(x1,x2,x3) x2^3 + 4*x3 - 4 ;
z{3,1} = @(x1,x2,x3) x1*x2 + x3 - exp(x3) ;

xi=[ 1 ; 1 ; 0.5 ]; %initial values

accuracy = 0.02;
MaxIter = 100;


x = NewtonSystem(z,xi,accuracy,MaxIter);

