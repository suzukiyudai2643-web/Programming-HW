%% Q1
a=-18.2;
b=6.42;
c=a/b;
d=0.5*(c*b+2*a);
% a) 
x=d-((a+b)/c)+((a+b)^2)/sqrt(abs(a*b*c));
disp(x)
% answer -23.8307

% b)
y=log(abs((c-d)*(b-a)))+(a+b+c+d)/(a-b-c-d);
disp(y)
% answer -1.1995

% c)
z=(cos(exp(a))+sin(exp(b)))/(d+a-c);
disp(z)
% answer -3.7137e-04
%% Q2
% Ax+By+C=0
% P=(x,y)
A=2;
B=-7;
C=-10;
x=3;
y=-4;

d=abs(A*x+B*y+C)/sqrt(A^2+B^2);
disp(d)
% answer 3.2967
%% Q3

% a)
% let x be the length of the rectangular field
x=input('input length');
% then the width (y) would be 
y=2400-2*x;
% A is the area 
A=x*y;
fprintf('the area of the field is %d\n',A)



% b)
% this can be written as a function y=x(2400-2x) 
% which y=-2(x-600)^2+720000
% y is largest when x=600 
% since x can be 600, input 600

%input length600
%the area of the field is 720000



%% Q4
% x is the amount of money that the buyer entered
x=input('enter the amount of money you put:');
y=input('choose candy from A, B, and C:','s');
switch y
    case 'A'
        x=x-1;
    case 'B'
        x=x-2;
    case 'C'
        x=x-3;
    otherwise
        error('invalid candy')
end
if x>0
    fprintf('here is the change $%g\n',x)
    disp('Thank you so much')
elseif x==0
    disp('Thank you so much')
else 
    disp('not enough money')
end






