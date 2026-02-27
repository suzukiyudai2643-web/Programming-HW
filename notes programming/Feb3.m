%% Example 1

% using fprintf
fprintf('Hello, HATLAB!\n')
% \moves the line

%% Example 2

x=5;
fprintf('The value of x is%d \n',x)
%d to print integer

y=3.14159;

%% Example 1
x=0:0.01:2*pi;
plot(x,sin(x))

%% Example 2

plot(x,sin(x),x,cos(x))
legend('sin(x)','cos(x)')

title('sine and cosine')

xlabel('x-value')
ylabel('y-value')

%% Example 3

x=0:0.01:10;
%define x range
y=exp(-x);
plot(x,y)
title('e^{-x}')

% use {} to hide prenthesis on title

xlabel('x')
ylabel('f(x)=e^{-x}')

% gtext('y=e^{-x}')

% to title on wherever you want

%% Example 4
t=linspace(0,2*pi,500);
x=cos(t);
y=sin(t);

plot(x,y)
title('unit circle')
xlabel('cos(t)')
ylabel('sin(t)')

%% Example 5

% damped osillation
x=0:0.01:10;
y=exp(-0.3*x).*sin(5*x);
% put [.] infront of multiplication or devision

plot(x,y)
title('damp osillation')
xlabel('x')
ylabel('y')

%% Example 6
% multiple curves from a matrix

x=linspace(0,2*pi,10);
% linspace(from,up to, how many dots to plot)
Y=[sin(x);cos(x);sin(2*x)];

plot(x,Y)
title('multiple curves from a matrix')
legend('sin(x)','cos(x)','sin(2x)')
xlabel('x')
ylabel('Y')

%% Example 7
% piecewise
x=-5:0.01:5;
y=x.^2.*(x>=0)+abs(x).*(x<0);
plot(x,y)
title('piecewise function')

%% Example 8

x=1:200;
y=cumsum(randn(1,200));
plot(x,y)

%% Example 9
% Logarithmic scale
x=0.1:0.1:10;
y=x.^3;
% put [.] since it's not constant multiplication
loglog(x,y)
title('Log-Log Plot')

%% Example 10

x=linspace(0,2*pi,300);
k=[1 2 3 4]';
y=sin(k*x);

plot(x,y)

legend('k=1','k=2','k=3','k=4')
title('sin(kx)')