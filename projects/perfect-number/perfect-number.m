%% perfect number



for n=1:100
    if isprime(2.^n-1)==1
    PN=2.^(n-1).*(2.^n-1);
    disp(PN)
    end

end



