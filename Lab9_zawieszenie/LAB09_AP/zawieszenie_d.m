global Alfa
global Beta
global k

mc = 250; %kg
mw = 30; %kg
cc = 15000; %N/m
cw = 200000; %N/m
dc = 200; %Ns/m
dw = 10; %Ns/m

k = 1054;
Alfa = 123.1;
Beta =  0.125;
w0 = 0;

% USTAWIC na STEP i Final Value na 0.1
 [parametry, blad] = fminsearch('ident',[1067, 123.1, 0.125]);


