 load('rec1_gas0-100.mat');
 h = 0.001; m=350;
 data2 = iddata(rec1_006.speed', rec1_006.force', 0.001);
 model2 = armax(data2, [1 1 0 1]);
 a1=getpvec(model2)
 compare(data1,model1);
 bf=(a1(1)+1)*m/h
 ba=a1(2)*m/h
 