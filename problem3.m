%problem 3 This script find the expected value of the volume of a tetrahedron
%formed by four points chosen randomly inside the tetrahedron whose vertices 
%are (0,0,0), (0,1,0), (0,0,1) and (1,0,0).
%
%To do this, we will draw random uniformly points in [0,1]^3, then we will 
%remove all the points that are not inside the tetrahedron, and then we will
%grab them four by four to form random tetrahedron and calculate their volumes
%using the triple product formula. After all of this, we will take the average
%of this volumes.
%
% Raúl Cortez, Wilfredo Iraheta, 13-Jun-2019

%fix the number of points to draw
n=100000;

%draw the points in [0,1]^3
p = rand(n,3);

%remove the points outside the tetrahedron
P = [];
for i=1:n
  if sum(p(i,:))<=1
    P = [P; p(i,:)];
  endif
endfor

%calculate the number of four points that we have
m = floor(length(P)/4);

%calculate the sum of all volumes of the random tetrahedron
average = 0;
for i=1:m
  average = average + 1/6*abs(dot(cross(P(4*i-2,:)-P(4*i-3,:),P(4*i-1,:)-P(4*i-3,:)),P(4*i,:)-P(4*i-3,:)));
endfor

%calculate the average of the volumes
average = average/m;

%print the results
fprintf('The expected value of the volume of a tetrahedron formed by four\n')
fprintf('points chosen randomly inside a tetrahedron whose vertices are\n')
fprintf('(0,0,0), (0,1,0), (0,0,1) and (1,0,0) is %f \n',average)