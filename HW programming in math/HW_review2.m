%% HW6
% Q1
f=@(x) x^3+4*x^2-10;
interval=input('enter starting point and ending point: ');
a=interval(1);
b=interval(2);
iteration=0;
m=1000;
while abs(f(m))>0.0001
    if f(a)==0
        if f(b)==0
            fprintf('root found %f\n',b)
        end
        fprintf('root found %f\n',a)
    elseif f(a)*f(b)>0
        disp('wrong ineterval')
        break
    else
        m=(a+b)/2;
        plot(iteration,f(m),'ro')
        hold on
        iteration=iteration+1;
        if f(m)==0
            fprintf('root found in %dth iteration, %f\n',iteration,m)
            break
        elseif f(m)*f(a)>0
            a=m;
        else
            b=m;
        end
    end
end
fprintf('root found in %dth iteration, %f\n',iteration,m)
%% Q2
