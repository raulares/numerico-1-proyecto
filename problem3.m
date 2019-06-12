
n=100000;

p = rand(n,3);

P = [];

for i=1:n
  if sum(p(i,:))<=1
    P = [P; p(i,:)];
  endif
endfor

m = floor(length(P)/4);

average = 0;

for i=1:m
  average = average + 1/6*abs(dot(cross(P(4*i-2,:)-P(4*i-3,:),P(4*i-1,:)-P(4*i-3,:)),P(4*i,:)-P(4*i-3,:)));
endfor

average = average/n