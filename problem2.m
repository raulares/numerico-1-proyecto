%problem 2 This script approximates the value of the following two integrals
%using Monte Carlo method
%
%int1 = \int_1^4\int_2^5 (x^2-y^2+xy-3)dxdy = 423/4
%int2 = \int_0^1\int_{z^2}^sqrt(z) \int_0^{y+z} xy dxdydz = 109/1008
%
%Then, the script compares the exact value of the integrals with the
%approximations.
%
% Raúl Cortez, Wilfredo Iraheta, 13-Jun-2019

%fix the number of points to draw
n=100000;

%draw the points in the region of the first integration
x = 2+3*rand(n,1);
y = 1+3*rand(n,1);

%evaluate the points drawn in the region
f = x.^2-y.^2+x.*y-3;

%calculate the integral multiplying the mean of the points drawn inside the
%area of the region of integration and calculate the errors
int1 = 9*mean(f);
aerr1 = abs(423/4-int1);
rerr1 = 4*abs(423/4-int1)/423;

%print the results
fprintf('The approximated value of the first integral is %f\n', int1)
fprintf('The absolute error is %f and the relative error is %f\n',aerr1,rerr1)

%draw the points in the region of the second integration
x = 2*rand(n,1);
y = rand(n,1);
z = rand(n,1);

%check whether the points are inside the region or not and evaluate them
int2 =0;
j=0;
for i=1:n
  if x(i)<=y(i)+z(i) && y(i)>=z(i)^2 && y(i)<=sqrt(z(i))
    int2 = int2 + x(i)*y(i);
  endif
endfor

%calculate the integral multiplying the mean of the points drawn inside the
%area of the region that we grab the points
int2 = 2*int2/n;
aerr2 = abs(109/1008-int2);
rerr2 = 1008*abs(109/1008-int2)/109;

%print the results
fprintf('The approximated value of the second integral is %f\n', int2)
fprintf('The absolute error is %f and the relative error is %f\n',aerr2,rerr2)