mc = 250;
mw = 30;
cc = 15000;
cw = 200000;
dc = 200;
dw = 10;
alfa=10;
beta=10;
k=20;

a = sim('model','SimulationMode','normal');
b = a.get('simout');
time = b.Time;
value = b.Data;
    
blad = fminsearch(@optymalizacja,[time(1), value(1)])