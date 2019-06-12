
n=100000;

r1 = rand(n,1);
theta1 = 2*pi*rand(n,1);
r2 = rand(n,1);
theta2 = 2*pi*rand(n,1);

x1 = sqrt(r1).*cos(theta1);
x2 = sqrt(r2).*cos(theta2);
y1 = sqrt(r1).*sin(theta1);
y2 = sqrt(r2).*sin(theta2); 
dist = 0;

for i=1:n
  if x1(i)==x2(i)
  endif
  if x1(i)==x2(i)
    if y(1)==0
      dist = dist + sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2);
    else
      dist = dist + sqrt(x1(i)^2+y1(i)^2) + sqrt(x2(i)^2+y2(i)^2);
    endif
  elseif (y2(i)-y1(i))*x1(i)==y1(i)*(x2(i)-x1(i))
      dist = dist + sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2);
  else 
      dist = dist + sqrt(x1(i)^2+y1(i)^2) + sqrt(x2(i)^2+y2(i)^2);
  endif
endfor

prom = dist/n