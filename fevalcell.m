function[f]=fevalcell(z,xi)
n = numel(xi);

xi=splitcell(n,xi);
f=zeros(n,1);

for i = 1:n
f(i,1) = feval(z{i,1},xi{1,:});
end

end