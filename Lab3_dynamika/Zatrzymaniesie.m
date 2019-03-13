 load('rec1_20kph_break0.mat');
 h = 0.001; m=350;
 data1 = iddata(rec1_013.speed', [], 0.001);
 model1 = armax(data1, [1 1]);
 a1=getpvec(model1);
 compare(data1,model1);
 bf=(a1(1)+1)*m/h
 
 