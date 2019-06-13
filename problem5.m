%problem 5 This program calculates how many neutrons penetrate a lead wall of
%thickness 5 units after eight collisions with the lead atoms.
%
%To simulate this, we generate a sequence of seven random numbers and use them
%as the angle of bounce after colliding with the lead atom, then, we check if
%the neutron has surpassed the 5 units thick of the lead wall, and counting how
%many pass through we can calculate the percentage that surpassed the wall.
%
% Raúl Cortez, Wilfredo Iraheta, 13-Jun-2019

%fix the number of sequences to draw
n=100000;

%draw the sequences of random numbers
r = rand(n,7);

%check if the neutron surpassed the lead wall or not
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

%calculate what percentage of neutrons surpassed the wall
per = 100*m/n;

%print the results
fprintf('The percentage of neutrons that surpassed the lead wall is %f%%\n', per)