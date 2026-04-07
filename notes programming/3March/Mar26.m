%% Example 1

arry=[3,7,2,9,5];
target=input('enter a number to target: ');
found=false;
for i=1:length(arry)
    if arry(i)==target
        disp(['Found at position ',num2str(i)])
        found=true;
        break;
    end
end
% ~means not
if~found
    disp('Element not found');
end

%% Example 2: approximate the derivative
x=input('enter x: ');

f=@(x) x^2+3*x;

h=0.01;
derivative=(f(x+h)-f(x))/h;
disp(['approxibate derivative: ', num2str(derivative)])


%% Example 3

f=@(x) x^2;
a=input('enter the beginning of the interval: ');
b=input('enter the end of the interval: ');
n=input('the number of subintervals: ');
S=0;
% h is the length of the interval
h=(b-a)/n;

for i=1:n-1
    S=S+2*f(a+i*h);
end

T=h*(f(a)+S+f(b))/2;

disp(T)

exact=b^3/3-a^3;

error=abs(exact-T);

fprintf('error is %f\n',error)

%% Example 4


f=@(x) x^2;
a=input('enter the beginning of the interval: ');
b=input('enter the end of the interval: ');


% h is the length of the interval


k=input('acceptable error;');

exact=b^3/3-a^3;
while true
    n=2;
    S=f(a)+f(b);
    h=(b-a)/n;
    if error<=k
        break
    end

for i=1:n-1
    S=S+2*f(a+i*h);
end

T=h*(S)/2;



error=abs(exact-T);
n=n+1;
pause
end

fprintf('needed intervals is %f \n',n)


disp(T)



fprintf('error is %f\n',error)


%% example 5
% trapezoidal rule


f=@(x) x^2;
a=input('enter the first end of the interval');
b=input('enter the end of the interval');

sum_val=0;
i=1;
while ture
    for k=1:100000
        h=(b-a)/100000;
        x=a+i*h;
        sum_val=sum_val+f(x);
    end
    integral=(h/2)*(f(a)+2*sum_val+f(b));
    exact=8/3;
    err=abs(exact-integral);
if err<=0.01
    disp('The number needed with specific n', num2str(i))
    break
end
end


%% example 6

f=@(x) x^2;
a=input('enter the first end of the interval');
b=input('enter the end of the interval');

exact=(b^3-a^3)/3;
n=1;
while true
    h=(b-a)/n;
    sum_val=0;
    for k=1;n-1;
        x=a+k*h;
        sum_val=sum_val+f(x);
    end
    integral=(h/2)*(f(a)+2*sum_val+f(b));
    err=abs(exact-integral);
    if err<=0.01
        fprintf('required n=%d\n', n)
        fprintf('approximate integral=%.5f\n',integral)
        fprintf('error=%5f\n',err)
        break
    end
    n=n+1;
end
