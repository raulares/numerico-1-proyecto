%problem 4 This scripts calculate the average distance between two points
%randomly selected in a unit circle centered at the origin using the usual
%distance if the points are on a straight line through the origin and
%sqrt(x1^2+y1^2)+sqrt(x2^2+y2^2) in the other cases.
%
%To draw the points, we use polar coordinates and create for random uniformly 
%distributed variables, then we tweak the variables to get a random uniformly
%distribution inside the circle and finally we change to cartesian coordinates.
%
% Raúl Cortez, Wilfredo Iraheta, 13-Jun-2019

%fix the number of points to draw
n=100000;

%draw the points with random uniformly distributed variables
r1=rand(n,1);
r2=rand(n,1);
theta1=2*pi*rand(n,1);
theta2=2*pi*rand(n,1);

%fix the variables to get a random uniformly distribution inside the circle 
%using polar coordinates
r1 = sqrt(r1);
r2 = sqrt(r2);

%get the cartesian coordinates using the change of variables from polar
%coordinates to cartesian coordinates
x1=r1.*cos(theta1);
x2=r2.*cos(theta2);
y1=r1.*sin(theta1);
y2=r2.*sin(theta2);

%check if the points are on a straight line through the origin, to do this we
%need to check that (y2-y1)x1=y1(x2-x1) if x1!=x2, if they are equal we only
%need to check that y1=0, else they aren't on a straight line through the origin
dist = 0;
for i=1:n
  if x1(i)==x2(i)
    if y(1)==0
      dist = dist + sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2);
    else
      dist = dist + sqrt(x1(i)^2+y1(i)^2) + sqrt(x2(i)^2+y2(i)^2);
    endif
  elseif (y2(i)-y1(i))*x1(i)==y1(i)*(x2(i)-x1(i))
      dist = dist + sqrt((x1(i)-x2(i))^2+(y1(i)-y2(i))^2);
  else 
      dist = dist+ sqrt(x1(i)^2+y1(i)^2) + sqrt(x2(i)^2+y2(i)^2);
  endif
endfor

%calculate the average of the distances
prom = dist/n;

%print the results
fprintf('The average distance between two points randomly selected in a unit\n')
fprintf('circle centered at the origin is %f\n',prom)

%plot a graph to ilustrate the problem
figure
t=linspace(0,2*pi,1000);
plot(cos(t),sin(t))
hold on
line([.5 -.4],[-.5 .4])
hold on
line([.3 -.3],[.3 -.3])
hold on
line([.4 -.1],[0 .2]) 
hold on
line([.8 .7],[.2 -.1])
pbaspect([1 1])
