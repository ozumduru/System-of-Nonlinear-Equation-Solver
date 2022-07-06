function[f]=fevalcell(z,xi)

n = numel(z);
n2 = numel(xi);

xi=splitcell(n2,xi);
f=zeros(n,1);

for i = 1:n
f(i,1) = feval(z{i,1},xi{1,:});
end

end
