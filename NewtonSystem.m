function[x]=NewtonSystem(z,xi,accuracy,MaxIter)
i=0;
error = 1;
while error > accuracy

f = fevalcell(z,xi);
J=JacobianMatrix(z,xi);
 
h =-J^(-1)*f;
xi = xi + h;
error = sqrt(sum(h.^2));

if i > MaxIter 
    break
end
i = i+1;
end
x = xi;
end