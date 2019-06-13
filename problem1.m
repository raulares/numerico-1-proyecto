%problem1 This program draws 1600 random points uniformly distributed in the 
%sphere defined by x^2+y^2+z^2<=1, then counts and displays the number of
%random points in the first octant.
%
%To do this, we use spherical coordinates and create three random uniformly 
%distributed variables, then we tweak the variables to get a random uniformly
%distribution inside the sphere and finally we change to cartesian coordinates.
%
% Raúl Cortez, Wilfredo Iraheta, 13-Jun-2019

%draw three random uniformly distributed variables 
r = abs(rand(1600,1));
theta = 2*pi*rand(1600,1);
u = rand(1600,1);

%fix the variables to get a random uniformly distribution inside the sphere 
%using spherical coordinates
r = cbrt(r);
phi = acos(1-2*u);

%get the cartesian coordinates using the change of variables from spherical
%coordinates to cartesian coordinates
x = r.*cos(theta).*sin(phi);
y = r.*sin(theta).*sin(phi);
z = r.*cos(phi);

%store the points inside the sphere that lie in the first octant
Graph = [];
for i=1:1600
  if x(i)>=0 && y(i)>=0 && z(i)>=0
    Graph = [Graph; x(i) y(i) z(i)];
  endif
endfor

%extract the coordinates of x, y, and z of the points
X = Graph(:,1);
Y = Graph(:,2);
Z = Graph(:,3);

%print the number of points in the first octant
fprintf('There are %d points in the first octant.\n',length(X))

%plot the points in the first octant
figure
plot3(x,y,z,'o')
xlim([-.05 1])
ylim([-.05 1])
zlim([-.05 1])
pbaspect([1 1 1])
