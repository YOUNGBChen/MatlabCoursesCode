syms t;
f1= 0.5*exp(-2*t)*heaviside(t);
F1=fourier(f1);

f2 = exp(-2*(t-1))*heaviside(t-1)/2; 
F2 = fourier(f2);  

y1=abs(F1);
y2=angle(F1);

y3=abs(F2);
y4=angle(F2);

fplot(y4)
