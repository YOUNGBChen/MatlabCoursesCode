sys = tf([2,1],[1,4,3]);
t=0:0.1:10;
y=step(sys,t);%���Ծ��Ӧ
plot(t,y)