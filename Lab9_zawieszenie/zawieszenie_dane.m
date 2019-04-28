mc = 250;
mw = 30;
cc = 15000;
cw = 200000;
dc = 200;
dw = 10;
alfa = 7;
beta = 23;
k = 8;
options = optimset('MaxFunEvals',40000);
opti = fminsearch('optymalizacja',[alfa, beta, k],options);
alfa = opti(1);
beta = opti(2);
k = opti(3);