function [MSE] = optymalizacja(in)
alfa = in(1);
beta = in(2);
k = in(3);
model = sim('model','SimulationMode','normal');
signal = model.get('simout').Data;
step = model.get('simout1').Data;
MSE = sum((signal-step).^2);
end


