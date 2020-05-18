%�źŲ���,���棺
t1=-2*pi:0.001:2*pi;
y1=sawtooth(0.5*t1,1);
subplot(2,1,1);
plot(t1,y1);

%�������� ��
t2=-8*pi:0.001:8*pi;
y2=sawtooth(0.5*mod(t2,4*pi),1);
subplot(2,1,2);
plot(t2,y2);

%г�����ӣ�
t=-2*pi:0.001:2*pi;
g=zeros(size(t));
f=zeros(size(t));
for n=-11:11
g=1j/(n*pi);
f=f+g*exp(1j*0.5*t*n);
end
y=sawtooth(0.5*t,1);
xlabel('t');
plot(t,y);
hold on;
plot(t,f);
legend('y ԭ����','f г�����Ӳ���ͼ');