t=-pi:0.001:pi;
y=-pi/2*sawtooth(t);
n=5;
f = zeros(size(t));
for n0=1:n
f=f+(sin(n0*t))/n0;
end
plot(t,f);
hold on;
plot(t,y);
title(['n=', num2str(n)]);