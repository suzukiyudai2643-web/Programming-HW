%% Example 1

f=@(x) x.^2;
g=@(x) x;

a=0;
b=1;
n=100;
h=(b-a)/n;
sum_val=0;
for i=1:n-1
    x=a+i*h;
    sum_val=sum_val+abs(f(x)-g(x));
end
area=(h/2)*(abs(f(a)-g(a))+2*sum_val+abs(f(b)-g(b)));
disp(['area between curves; ',num2str(area)])

%% Example 2
% talor series approximation of e^x
x=input('input x; ');
n=input('enter a positive integer; ');
sum_val=0;
for i=0:n
    sum_val=sum_val+(x^i)/factorial(i);
end
disp(['Approximation of e^x is; ',num2str(sum_val)])
%% Example 3
x=input('enter x: ');
n=input('enter a positive integer: ');
sum_val=0;

for i=0:n
    sum_val=sum_val+x.^i;
end
fprintf('the approximated value for 1/(1-x) is: %f \n',sum_val)

%% Example 4
x=input('enter x: ');
n=0;
sum_val=0;
exact=1/(1-x);
while true
    sum_val=0;

for i=0:n

    sum_val=sum_val+x.^i;
end
if abs(exact-sum_val)<=.05
    fprintf('the approximated value for 1/(1-x) is: %f \n',sum_val)
    disp(['needed terms to approximate is; ',num2str(n)])

    break
    
end
n=n+1;
end

disp(n)

%% Example 5

choice=menu('choose color','red','blue','yellow');
disp(choice)

%% Example 6
x=menu('x value','.5','.2',',9');
n=input('enter a positive integer: ');
sum_val=0;
for i=0:n
    sum_val=sum_val+x.^i;
end
fprintf('the approximated value for 1/(1-x) is: %f \n',sum_val)