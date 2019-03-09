h=0.1; v=1; psi=2; n = 0; X = 0; Y = 0; x0=[X Y psi v]; L=[1 3 10 30]; 
for przypadek=1:6
   figure;
   sgtitle(['Przypadek ',num2str(przypadek)]);
   for i = 1:4
        [u, t]=control(przypadek);
        length=L(i);
        for k=1:3
            n=n+1;
            optional_parameters = optional(L(i), k);
            dxModel = @(t, x, u) kinematicBicycleModel(t, x, u, optional_parameters);
            [t1, x1]=rk4(x0, u, h, dxModel);
            hold on
            subplot(2,2,i);
            plot(x1(:,1), x1(:,2));
            xlabel('X'); ylabel('Y');
            title(['D³ugoœæ pojazdu L = ', num2str(length)]); 
            legend('lf=L, lr=0','lf=0.5, lr=0.5','lf=0,lr=L');            
        end
    end
end
