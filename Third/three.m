syms t;
f1=heaviside(t+2)-heaviside(t-2);  
f2=cos(200*pi*t);  
f3=(heaviside(t+2)-heaviside(t-2))*cos(200*pi*t);  
FT1 = fourier(f1);
FT2 = fourier(f2);
FT3 = fourier(f3);

f1=abs(FT1);  
f2=abs(FT2);  
f3=abs(FT3);  

fplot(f2)