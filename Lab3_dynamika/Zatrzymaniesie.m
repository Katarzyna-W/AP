 load('rec1_20kph_break0.mat');
 h = 0.001; %czas pomi�dzy pomiarami
 m=350; %masa samochodu
 data1 = iddata(rec1_013.speed', [], h);
 model1 = armax(data1, [1 1]);
 a1 = getpvec(model1);
 compare(data1,model1);
 %wsp�czynnik tarcia
 bf = (a1(1)+1)*m/h;
 
 