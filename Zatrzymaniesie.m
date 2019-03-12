 load('rec1_20kph_break0.mat');
 data1 = iddata(rec1_013.speed', [], 0.001);
 model1 = armax(data1, [1 1]);
 a1=getpvec(model1);
 subplot(2,1,1);
 compare(data1,model1);
 b1=(-a1(1)*350+1)/0.001
 data2 = iddata(rec1_006.speed', [], 0.001);
 model2 = armax(data2, [1 1]);
 a2=getpvec(model2);
 subplot(2,1,2);
 compare(data2,model2);
 b2=(-a2(1)*350+1)/0.001
 