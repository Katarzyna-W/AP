function blad = optymalizacja(in)
k = in(1);
alfa = in(2);
beta = in(3);

%model = sim('model');
aa= simout.Time;
blad = sum((aa-0.1).^2);
end


