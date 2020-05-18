t=-3:0.001:3;

y1=cos(30*t);
y2=stepfun(t,-2.5);
y3=stepfun(t,2.5);%构造f1

y4=stepfun(t,0);
y5=stepfun(t,4);%构造f2

f1=y1.*(y2-y3);
f2=y3-y4;
x=-3+-3:0.001:3+3;%确定范围
f=conv(f1,f2);
plot(x,f)