function [u, t] = control(scenario)
% wektor sterowañ u = [delta_f delta_r a]
if scenario == 1
    u = repmat([deg2rad(5) 0 0],800,1); t=0:0.1:80;
elseif scenario ==2
    u = zeros(800,3); t = 0.1:0.1:80;
    for i=1:80/0.1
        delta_f(i) = deg2rad(10)*sin(0.25/(2*pi)*i);
    end
    u(:,1)=delta_f(:); t=0:0.1:80;
elseif scenario ==3
    t=0:0.1:320; k=320/4; u = zeros(320,3);
    delta_r1=deg2rad(10); delta_r2=deg2rad(-10);
    delta_r3 = deg2rad(10); delta_r4=deg2rad(-10);
    u(1:k,1)=delta_r1; u(k+1:2*k,1)=delta_r2;
    u(2*k+1:3*k,1)=delta_r3; u(3*k+1:4*k,1)=delta_r4;
elseif scenario ==4
    u = repmat([0 deg2rad(-5) 0],800,1); t=0:0.1:80;
elseif scenario ==5
    u = zeros(800,3); t = 0.1:0.1:80;
    for i=1:80/0.1
        delta_r(i) = deg2rad(-10)*sin(0.25/(2*pi)*i);
    end
    u(:,2)=delta_r(:); t=0:0.1:80;
 elseif scenario ==6
    t=0:0.1:320; k=320/4; u = zeros(320,3);
    delta_r1=deg2rad(-10); delta_r2=deg2rad(10);
    delta_r3 = deg2rad(-10); delta_r4=deg2rad(10);
    u(1:k,2)=delta_r1; u(k+1:2*k,2)=delta_r2;
    u(2*k+1:3*k,2)=delta_r3; u(3*k+1:4*k,2)=delta_r4;
end  
end

