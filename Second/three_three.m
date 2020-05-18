t=-pi:0.001:pi;
N=input('N=');
for j=1: N
f = zeros(size(t));
for i=1:j
f = f + (sin(i*t))/i;
end
fmax(j) = (max(f)-pi/2)/pi;
end
figure(1); plot(t, f, 'r');
hold on;
y=-pi/2*sawtooth(t);
plot(t,y);axis([-4 4 -2 2]) ;
title(['N=', num2str(N)]);
figure(2); plot(fmax) ;
legend('(f_{n}-f)/f(max)');
axis([0 200 -0.2 0.15]);
title('吉布斯现象');