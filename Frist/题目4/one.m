t1=rand(1,500);%利用rand函数产生随机数列，即服从平均分布的白噪声
figure(1);%图片1
plot(t1);%描绘图像

[y,x]=xcorr(t1,'biased');%求该噪声的自相关函数
figure(2);%图片2
plot(x,y);%描绘图像