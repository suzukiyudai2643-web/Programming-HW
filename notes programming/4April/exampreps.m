%% plot sinx and cosx

x=0:0.01:pi;
y1=cos(x);
y2=sin(x);
plot(x,y1)
hold on
plot(x,y2)
xlabel('x')
ylabel('y')
title('graph of sinx and cosx')

%% 
n=input('enter a positive integer: ');
while n<=0
    disp('invalid value, please input a positive integer')
    n=input('enter a positive integer: ');
end
disp('choose an option: ' )
disp('1: the sum from 1 to n ')
disp('2: factorial of n')
disp('3: even numbers from 1 to n')
choice=input('enter your choice 1, 2, and 3: ');
sum=0;
factorial=1;
switch choice
    case 1
        for i=1:n
            sum=sum+i;
        end
        fprintf('the sum from 1 to n is: %d\n',sum)
    case 2
        for i=1:n
            factorial=factorial*i;
        end
        fprintf('the factorial of n is: %d\n',factorial)
    case 3
        disp('even numbers are: ')
        for i=1:n
            if mod(i,2)==0
                fprintf('%d ',i)
            end

        end
        fprintf('\n')
    otherwise
        disp('invalid choice')
end

%% operation in random matrix

A=randi([1,9],1,10);
target=input('enter a target');
disp(A)
for i=1:length(A)
    if A(i)==target
        fprintf('target %d found at %d\n',target,i)
        break
    end
    if i==length(A)
        disp('target not found')
    end
end

%% plot e^x and lnx
x=0:.5:2;
y1=exp(x);
y2=log(x);
y3=sin(x);
plot(x,y1)
hold on % to "add" function, not "replace"
plot(x,y2)
plot(x,y3)
xline(0)
yline(0)
xlabel('x')
ylabel('y')
title('e^x and lnx')
gtext('e^x')
gtext('lnx')
gtext('sinx')
axis([-4 4 -4 4])
%% gemini problems 1

s=input('enter the wind speed: ');

region=menu('select the region','Atlantic','Pacific','indian');
switch region
    case 1
        if s<74
            disp('tropical Storm')
        elseif s<=95
            disp('Category 1 hurricane')
        else 
            disp('major hurricane')
        end
    case 2        
        if s<74
            disp('tropical Storm')
        elseif s<=95
            disp('Category 1 Typhoon')
        else 
            disp('major Typhoon')
        end
    case 3
        if s<74
            disp('tropical Storm')
        elseif s<=95
            disp('Category 1 Cyclone')
        else 
            disp('major Cyclone')
        end
end
%% problem 2
V=[2 5 8 11 14];
W=[0 0 0 0 0];
for i=1:length(V)
    if V(i)^2<100
    W(i)=V(i)^2;
    else 
        W(i)=0;
    end
end
disp(W)

%% problem 3
sum=0;
while sum<=100
    x=randi([1,20]);
    sum=sum+x;
end

disp(sum)

while true
    x=rand;
    if x>0.95
        disp(['number exceeded 0.95, x=',num2str(x)])
        break
    end
end


%% problem 4
x=input('enter the first guess: ');
f=@(x) x^2-2;
g=@(x) 2*x;
for i=1:5
    x=x-(f(x)/g(x));
    fprintf('x%d=%f\n',i,x)
end

%% problem 5
x=0:0.01:2*pi;
y1=sin(x);
y2=cos(x);
plot(x,y1)
hold on
p lot(x,y2)
title('sinx , cosx')
xlabel('x')
ylabel('y')
xline(0)
yline(0)
gtext('sinx')
gtext('cosx')

%% subplots 
x = 0:0.1:2*pi;

subplot(2,1,1) % (Rows, Columns, Index)
plot(x, sin(x), 'r--')
title('Sine Wave')

subplot(2,1,2)
plot(x, cos(x), 'b*')
title('Cosine Wave')

%% zeros matrix
W=zeros(1,9);
disp(W)

%% s econd problem sets by gemini 1
  T=[68 72 45 90 102 33];
  for i=1:length(T)
      if T(i)<40
          disp('Extreme')
          x=1;
      elseif T(i)>95
          disp('Extreme')
          x=2;
      else
          disp('normal')
          x=3;
      end
  switch x
      case 1
           disp('Danger: freeze')
      case 2
          disp('Danger: heat')
  end


  end
  %% problem 2
x=2;
i=0;
while true
    x=1/2*(x+2/x);
    difference=abs(sqrt(2)-x);
    if difference<10^(-6)
        fprintf('the value reached to acceptable value in %d steps: %f\n',i,x)
        break
    end
    i=i+1;
end
%% problem 3
M=zeros(5,5);
for i=1:5
    for j=1:5
        if i==j
            M(i,j)=i^2;
        elseif i>j
            M(i,j)=-1;
        else
            M(i,j)=0;
        end
    end
end
k=0;
for i=1:5
    for j=1:5
        if M(i,j)==-1
            k=k+1;
        end
    end
end
disp(M)
disp(k)

%% problem 4
f=@(x) x^3-x-1;
g=@(x) 3*x^2-1;
x=input('enter a first guess; ');
for i=1:20
    x=x-f(x)/g(x);
    disp(x)
    if abs(g(x))<0.001
        disp('derivative too small')
        break
    end
end
disp(x)

%% Problem 5
t=0:0.01:10;
y1=exp(-.5*t).*sin(2*t);
y2=exp(-.5*t).*cos(2*t);

subplot(2,2,1)
plot(t,y1)
title('damped sine')
xlabel('t')
ylabel('y')

subplot(2,2,2)
plot(t,y2)
title('damped cosine')
xlabel('t')
ylabel('y')

subplot(2,2,3)
plot(y1,y2)
title('phase portrait')
xlabel('sin component')
ylabel('cos component')

subplot(2,2,4)
hist(randn(1000,1))
title('random normal distribution')
%%
disp(rand(1,5))
%%
x=randi([1,9],1,8);
disp(x)

%% Taylor series approximation cos
clear 
clc
x=input('enter x-value: ');
k=1;
exact=cos(x);
disp(exact)
sum_val=1;
while abs(exact-sum_val)>0.0001
sum_val=sum_val+((-1).^k)*((x).^(2*k))/factorial(2*k);

k=k+1;
end
k=k-1;
fprintf('the approximated cos(%d)=%f\n',x,sum_val)
fprintf('the actual value is %f, took %d terms\n',exact,k)

%% Taylor series cos approximation
sum=1;
x=input('enter x value: ');
for k=1:10
    sum=sum+(((-1)^k)*x.^(2*k))/factorial(2*k);
end
disp(sum)
disp(cos(x))

%%
clear
clc

x = input('enter x-value: ');
x = x(1);   % force scalar

k = 1;
exact = cos(x);
disp(exact)

sum_val = 1;

while abs(exact - sum_val) > 0.01
    sum_val = sum_val + (-1)^k * (x)^(2*k) / factorial(2*k);
    k = k + 1;
end

k = k - 1;

fprintf('the approximated cos(%f) = %f\n', x, sum_val)
fprintf('the actual value is %f, took %d terms\n', exact, k)

%% 
clear
clc
f=@(x) 3*(x-5)^3+5*(x-5)^2-4*(x-5)+2;
g=@(x) x^2/24;
interval=input('enter the interval');
a=interval(1);
b=interval(2);
sum=0;
n=1;
while true
for i=1:n
    sum=0;
    sum=sum+(b-a)/n*(abs(f(i)-g(i)));
end
if abs(3/4*b^4-40/3*b^2+171/2*b^2-228*b-1/72*b^3-3/4*a^4-40/3*a^2+171/2*a^2-228*a-1/72*a^3-sum)>=0.01
    fprintf('the approximation not enough at n=%d, area=%f\n',n,sum)
else 
    fprintf('enough approximation at n=%d, area=%f',n,sum)
    break
end
n=n+1;
end

%% area approximation
clear 
clc
f=@(x) x^2;
F=@(x) 1/3*x^3;
g=@(x) x;
G=@(x) 1/2*x^2;
interval=input('enter an interval');
a=interval(1);
b=interval(2);
n=1;
while true
    area=0;
    for i=1:n
        l=(b-a)/n;
        area=area+l*(g(a+i*(b-a)/n)-f(a+i*(b-a)/n));
    end
    if abs((G(b)-F(b))-(G(a)-F(a))-area)>=0.00001
        fprintf('not enough approximation at n=%d, area=%f\n',n,area)
    else
        fprintf('enough approximation at n=%d, area=%f\n',n,area)
        break
    end
    n=n+1;
end
disp(['the exact value is',num2str(1/6)])


%% subplot
clear 
clc
x=0:0.01:2*pi;
y1=x.^2;
y2=x;
subplot(1,2,1)
plot(x,y1)
title('y=x^2')
xlabel('x')
ylabel('y')
gtext('y=x^2')
subplot(1,2,2)
plot(x,y2)
title('y=x')
xlabel('x')
ylabel('y')
gtext('y=x')

%% plot
clear 
clc
x=0:0.01:1;
y1=x.^2;
y2=x;

plot(x,y1)
title('y=x^2, y=x')
xlabel('x')
ylabel('y')
gtext('y=x^2')
hold on
plot(x,y2)
gtext('y=x')
%% zeros

A=zeros(2,3);
disp(A)
B=zeros(1,4);
disp(B)


%% find targets in input vector
A=input('input with square bracket: ');
target=input('input target: ');
for i=1:length(A)
    if target==A(i)
        fprintf('target %d found at %d\n',i,A(i))
    end
end

%% 
clear 
clc
linspace(0,2)
%% 
randi([1,9],1)
