
n=100000;

r1 = abs(rand(n,1));
theta1 = 2*pi*rand(n,1);
r2 = abs(rand(n,1));
theta2 = 2*pi*rand(n,1);

x1 = r1.*sin(theta1);
x2 = r2.*sin(theta2);
y1 = r1.*cos(theta1);
y2 = r2.*cos(theta2);
dist = [];

for i=1:n
  if y(2)==y(1)
    dist = [dist sqrt(x1(i)^2+y1(i)^2)+sqrt(x2(i)^2+y2(i)^2)];
  else  
    dist = [dist sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2)];
  endif
endfor

prom = sum(dist)/length(dist)