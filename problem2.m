

n=1000000;

x = 2+3*rand(n,1);
y = 1+3*rand(n,1);

f = x.^2-y.^2+x.*y-3;
int1 = 9*mean(f)

x = 2*rand(n,1);
y = rand(n,1);
z = rand(n,1);

int2 =0;
j=0;
for i=1:n
  if x(i)<=y(i)+z(i) && y(i)>=z(i)^2 && y(i)<=sqrt(z(i))
    int2 = int2 + x(i)*y(i);
  endif
endfor

int2 = 2*int2/n