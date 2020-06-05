a=[1 3 2];
b=[1 0];
h1=impulse(b,a); %求冲激响应
h2=step(b,a); %求阶跃响应

sys=tf(b,a);
t=0:0.01:5;
f=cos(20*t);
y=lsim(sys,f,t);
plot(t,y)
