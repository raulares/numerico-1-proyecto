

n=100000;
r = rand(n,7);
m=0;

for i=1:n
  x=1;
  for j=1:7
    x = x + cos(pi*r(i,j));
    if x<=0
      break
    endif
    if x>=5
      m = m+1;
      break
    endif
  endfor
endfor

per = 100*m/n