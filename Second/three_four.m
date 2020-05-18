t=-pi:0.001:pi;
N=input('N=');;
F0= zeros(size(t));
for j=1:N
f = zeros(size(t));
for i=1:j
f = f + (sin(i*t))/i;
F0=F0+(sin(i*t))/i;
end
end
F=F0/n;
y=-pi/2*sawtooth(t);
plot(t, f);hold on;
plot(t,y);
plot(t,F) ;title(['n=', num2str(n)]);
legend('f_{N}(t)','sawtooth','F_{N}(t)');