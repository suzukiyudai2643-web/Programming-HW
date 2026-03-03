%% examp prep
disp('exam prep')
%% fprintf

x=exp(1)*10;

% remember d,e,f,g 
% d is for an integer
fprintf('the value is %d \n',x)
fprintf('the value is %e \n',x)
% %a.bf is to fix the length. a for the total length, b for decimals
fprintf('the value is %25.7f\n',x)
% g is generalized format

%% plot 1
x=0:.1:10;
% 0:2:10 means starting from 0, step is 2 then to 10.
% if I didn't mention 2, then it takes integers from 0 to 10
plot(x,x.^2)
title('y=x^{2}')
xlabel('x')
ylabel('y')
legend('y=x^2')
%% plot 2
t=0:2*pi/100:2*pi;


% t=linspace(0,2*pi,101);
plot(cos(t),sin(t))
title('x^2+y^2=1')
xlabel('x')
ylabel('y')

%% plot 3
x=1:0.1:2*pi;
y=[sin(x);cos(x);exp(x/(2*pi));2*sin(x)];
% use semicollon
plot(x,y)
% need to show what the vertical line mean

%% plot 4
x=-10:0.01:10;
y=x.^2-1.*(x<=1)+log(x).*(x>1);
plot(x,y)

%% plot 5
x=1:100;
y=cumsum(x);
plot(x,y)

%% while loops list Fibonacci sequence
x=1;
disp(x)
disp(x)
i=1;
while i<=130
    x=x+i;
    disp(x)
    i=i+x;
    disp(i)
end
%% while loop for tribonacci sequence

x=1;
disp(x)
s=1;
disp(s)
t=x+s;
disp(t)
while x<=100
    x=x+s+t;
    disp(x)
    s=s+t+x;
    disp(s)
    t=t+x+s;
    disp(t)
end

%% vectors
v=[1 3 5];
v=3*v;
disp(v)
disp(length(v))
disp(v(2))

%% for loops
x=0;
for i=1:10
    x=x+i;
    disp(x)
end
%% for loops
x=1;
for i=1:10
    x=x*i;
    disp(x)
end
    
%% while loops
% i=8;
% while i<=10
%     i=i-1;
%     disp(i)
% end

%% multiplication table

for i=1:9
    for j=1:9
        g=2*i*j;
        fprintf('%4d',g)
    end
    disp(' ')
end
%% for loops

for i=1:5
    if mod(i,2)==0
        for j=1:5
            if mod(j,2)==0
            fprintf('*')
            else
            fprintf(' ')
            end

        end
        disp(' ')
    else
        disp('*****')
    end
end

%% for loop

for i=1:4
    for j=1:4
        fprintf('(%d,%d)',i,j)
    end
    fprintf('\n')
end
%% while loop
i=6;
while i<=8
    j=6;
    while j<=i
        fprintf('%d',j)
        j=j+1;
    end
    fprintf(' \n')
    i=i+1;
end

%% while loop
i=0;
while i<=4
    j=1;
    while j<=i
        fprintf('%d ',j)
        j=j+1;
    end
    fprintf('\n')
    i=i+1;

end

%% create a prime number table
v=randi([1,100],5,5);
disp(v)

for i=1:5
    for j=1:5
        x=v(i,j);
        if isprime(x)==1
            fprintf('prime %d\n',x)
        end
    end
end
%% randi
x=randi([1,10],1,1);
disp(x)
% randi([1,10]) gives random integer from 1 to 10
% randi([1,10],2,2) gives 2 by 2 matrix with randi 1 to 10
%% another way to make multiplication table

v=zeros(9,9);
for i=1:9
    for j=1:9
        v(i,j)=i*j;
    end
end

disp(v)

%% prime number table
A=zeros(15,15);
i=1;

k=1;
while i<=15
    j=1;
    while j<=15
        if isprime(k)==1
            A(i,j)=k;
            k=k+1;
            j=j+1;
        else
            k=k+1;
        end
    end
    i=i+1;
end
disp(A)

%% switch case
color=input('input color: ','s');
switch color
    case 'red'
        disp('stop')
    case 'blue'
        disp('go')
    case 'yellow'
        disp('caution')
    otherwise
        error('invalid color')
end
%% draw sinx graph

x=0:.01:2*pi;
y=sin(x);
plot(x,y)
title('sinx')
xlabel(x)
ylabel('sinx')

%% draw sinx, cosx graph
x=linspace(0,2*pi,100);
y=[sin(x);cos(x)];
plot(x,y)
title('sin(x) cos{x}')
legend('sinx','cosx')
xlabel('x-value')


ylabel('y-value')

