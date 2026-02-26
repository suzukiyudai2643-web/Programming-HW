n=input('attempts');
y=100*(6^n-6*5^n+15*4^n-20*3^n+15*2^n-6*1^n)/6^n;

disp(y)

a=(1-(5/6)^n)*100;
disp(a)


% for x balls and n attempts
n=input('attempts');
x=input('how many');
P=0;
if mod(x,2)==0
    for i=0:x
        s=(-1)^i*i^n*nchoosek(x,i);
        P=s+P;
    end
else
    for i=0:x
        s=(-1)^(i+1)*i^n*nchoosek(x,i);
        P=s+P;
    end
end

