clear;clc;
for i=1:4
N=[2,3,4,5];%����
N1=N(i);
[z,p,k]=buttap(N1);%��ϵͳ�������㼫��
[b,a]=zp2tf(z,p,k);%��ԭ��ϵͳ����
n=0:0.02:2;
[h,w]=freqs(b,a,n);
H=(abs(h).^2);
plot(w,H);
hold on;
end
legend('N=2','N=3','N=4','N=5');
grid on;
hold off;