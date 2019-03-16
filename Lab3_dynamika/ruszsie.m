 load('rec1_gas0-100.mat');
 h = 0.001; %czas pomiêdzy pomiarami
 m=350; %masa samochodu
 data2 = iddata(rec1_006.speed', rec1_006.force', h);
 model2 = armax(data2, [1 1 0 1]);
 a1 = getpvec(model2);
 compare(data2,model2);
 %wspó³czynnik tarcia
 bf = (a1(1)+1)*m/h;
 %wspó³czynnik hamowania
 ba = a1(2)*m/h;
 