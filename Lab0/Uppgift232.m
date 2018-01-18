q = [1/20 0 0 -2];
t = -x.^3.*exp(-x);
pvalues = polyval(q,x);
values = pvalues + t;
plot(x, values);

