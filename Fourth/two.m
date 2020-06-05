syms s t
ft=1/(t+2);
F1=laplace(ft,t,s);

a1=[0 0 1 2];
b1=[1 1 2 6];
zplane(a1,b1)
a2=[0 1 0 1];
b2=[3 5 4 6];
zplane(a2,b2)
grid on