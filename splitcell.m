function[xi]=splitcell(n,xi)
 c = cell(1,n);

 for i = 1:n
c(1,i)={xi(i,1)};
end
xi = c;
end