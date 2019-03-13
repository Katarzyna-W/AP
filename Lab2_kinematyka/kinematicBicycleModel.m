function derivatives = kinematicBicycleModel(~, x, u, optional_parameters)
% wektor zmiennych stanu x = [X Y psi v]
% wektor sterowañ u = [delta_f delta_r a]
% optional_parameters op = [lr lf]
beta = atan((optional_parameters(2)*tan(u(2))+optional_parameters(1)*tan(u(1)))/(optional_parameters(2)+optional_parameters(1)));
dx = x(4)*cos(x(3)+beta); dy = x(4)*sin(x(3)+beta);
dpsi = (x(4)*cos(beta))/(optional_parameters(1)+optional_parameters(2))*(tan(u(1))-tan(u(2)));
dv=u(3);
derivatives(1)=dx; derivatives(2)=dy;
derivatives(3)=dpsi; derivatives(4)=dv;
end