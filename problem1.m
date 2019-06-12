
r = abs(rand(1600,1));
theta = 2*pi*rand(1600,1);
u = rand(1600,1);
phi = acos(1-2*u);

x = cbrt(r).*cos(theta).*sin(phi);
y = cbrt(r).*sin(theta).*sin(phi);
z = cbrt(r).*cos(phi);

Graph = [];
for i=1:1600
  if x(i)>=0 && y(i)>=0 && z(i)>=0
    Graph = [Graph; x(i) y(i) z(i)];
  endif
endfor

x = Graph(:,1);
y = Graph(:,2);
z = Graph(:,3);

fprintf('There are %d points in the first octant.\n',length(x))

figure
plot3(x,y,z,'o')
xlim([-.05 1])
ylim([-.05 1])
zlim([-.05 1])
pbaspect([1 1 1])
