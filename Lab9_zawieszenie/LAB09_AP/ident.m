function blad = ident(X0)
global k
global Alfa
global Beta
k = X0(1);
Alfa = X0(2);
Beta = X0(3);
abc = sim('zawieszenie_17');
aa= abc.simout.Data;
%USTAWIC na STEP i Final Value na 0.1
blad = sum((aa-0.1).^2)
end

