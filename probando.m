
r = abs(rand(3000,1));
theta = 2*pi*rand(3000,1);
u = rand(3000,1);
phi = acos(1-2*u);

x = cbrt(r).*cos(theta).*sin(phi);
y = cbrt(r).*sin(theta).*sin(phi);
z = cbrt(r).*cos(phi);


figure
plot3(x,y,z,'o')
pbaspect([1 1 1])