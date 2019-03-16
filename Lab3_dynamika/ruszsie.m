 load('rec1_gas0-100.mat');
 h = 0.001; %czas pomi�dzy pomiarami
 m=350; %masa samochodu
 data2 = iddata(rec1_006.speed', rec1_006.force', h);
 model2 = armax(data2, [1 1 0 1]);
 a1 = getpvec(model2);
 compare(data2,model2);
 %wsp�czynnik tarcia
 bf = (a1(1)+1)*m/h;
 %wsp�czynnik hamowania
 ba = a1(2)*m/h;
 