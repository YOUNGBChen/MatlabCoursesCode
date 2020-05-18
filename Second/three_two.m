clc,clear
T=2*pi;
t1=-T/2:0.01:T/2;
ft1=pi/2*-sawtooth(t1,1);
t2=[t1-2*T t1-T t1 t1+T t1+2*T];
ft=repmat(ft1,1,5);
 
subplot(3,1,1);
plot(t2,ft);
xlabel('t');
ylabel('时域波形');
grid on;
t=-5/2*T:0.01*pi:5/2*T;
A=pi;
n=20
for n1=0:n
    factor1=['cos(t*',num2str(n1),')'];
    f_t1=[num2str(A),'.*-sawtooth(t,1)'];
    Fn1(n1+1)=quad([f_t1,'.*',factor1],-T/2,T/2)/T;
end
for n2=0:n
    factor2=['sin(t*',num2str(n2),')'];
    f_t2=[num2str(A),'.*-sawtooth(t,1)'];
    Fn2(n2+1)=quad([f_t2,'.*',factor2],-T/2,T/2)/T;
end
k=[0:20]';
ft=Fn1*cos(k*t)+Fn2*sin(k*t);
ftt1=Fn1*cos(k*t)
ftt2=Fn2*sin(k*t);
subplot(4,1,2);
plot(t,ft);
ylabel('合成波形');
grid on;
subplot(4,1,3);
plot(t,ftt1);
ylabel('合成余弦波形');
grid on;
subplot(4,1,4);
plot(t,ftt2);
ylabel('合成正弦波形');
grid on;
