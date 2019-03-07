function op = optional(L,scenario)
if scenario == 1
    op(1) = L; op(2) = 0;
elseif scenario == 2
    op(1) = L/2; op(2) = L/2;
elseif scenario == 3
    op(1) = 0; op(2) = L;
end
end

