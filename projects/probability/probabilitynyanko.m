p=100*P/x^n;
disp(p)

t=input('attempts');
s=input('success');

P=100*((5/100)^s*(100/100)^(t-s))*nchoosek(t,s);
disp(P)
