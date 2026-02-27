%HW#1
%% Q1
x=2;
y=5;
disp(['a)',num2str((y^3)*x/(y+x^2))])

disp(['b)',num2str((x-(y)^(1/2))^(1/2))])

disp(['c)',num2str(7/5*x*y)])

disp(['d)',num2str((pi-3/4)/x*y^(2/5))])



%% Q2
disp(' ')
x=exp(1);
y=pi;
z=[];
z=x;
x=y;
y=z;

disp(['x=',num2str(x)])
disp(['y=',num2str(y)])





%% Q3
disp(' ')
x=-1+3i;
y=6-7i;
disp(['a)',num2str(x+y)])
disp(['b)',num2str(x-y)])
disp(['c)',num2str(x*y)])
disp(['d)',num2str(x/y)])

%% Q4
disp(' ')
a=1;
b=-1;
c=-6;
disp(['x^2-x-6=0 ' ...
    ' x=',num2str((-b+(b^2-4*a*c)^(1/2))/(2*a))]) 
disp([',',num2str((-b-(b^2-4*a*c)^(1/2))/(2*a))])

a=2;
b=-5;
c=-3;

disp(['2x^2-5x-3=0' ...
    ' x=',num2str((-b+(b^2-4*a*c)^(1/2))/(2*a))]) 
disp([',',num2str((-b-(b^2-4*a*c)^(1/2))/(2*a))])


%% Q5 
disp(' ')
x=10;



A1=x*(30-pi*x/2-x)/2;
A2=(1/2)*pi*(x/2)^2;
disp('x=10')
disp(['area of the window A=', num2str(A1+A2)])


disp('x=60/(2+pi)')
x=60/(2+pi);
A21=x*(30-pi*x/2-x)/2;
A22=(1/2)*pi*(x/2)^2;

disp(['area of the window A=', num2str(A21+A22)])
