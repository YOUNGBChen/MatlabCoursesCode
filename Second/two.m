t = linspace(0, 4*pi, 1001);
n = 200;
for t1 = 1 : length(t)
t2= t(t1);
k = 1 : n;
a = sin(t2* (2*k-1));
b = 2 * k - 1;
theSum(t1) = sum(a ./ b);
end
plot(t,theSum);
hold on;
f=0.8*square(t);
plot(t,f);
axis([0 4*pi -1 1]);
legend('square-wave','square');