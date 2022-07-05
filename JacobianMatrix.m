function[dz]=JacobianMatrix(z,xi)

n=numel(xi);
x = sym('x',[1,n]);

Dz=sym(zeros(n,n));
for j=1:n
for i=1:n
    a = z{j,:};
    Dz(j,i)=diff(a,x(i));
end
end
Dz(x) = Dz;

xi = splitcell(n,xi);

Dz=Dz(xi{1,:});
dz = double(Dz);

end