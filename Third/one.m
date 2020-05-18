clc,clear  
syms t;
y=exp(-2*abs(t));
Y=fourier(y); %µÃµ½F£¨w£©

syms w £»
FT = 1/(1+w^2);  
f = ifourier(FT);  

