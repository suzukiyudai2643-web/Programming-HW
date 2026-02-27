%% example 1
% using fprintf
fprintf('hello, MATLAB!\n')
% here /n moves to a new line

%% example 2
x=5;
fprintf('The value of x is%d \n',x);
% here %d for print integer
y=3.14159;
fprintf('The value of y is%f \n',y);
%here %f give me a floating point number 6 disites

%% example 3

%control decimal places
fprintf('y=%.2f \n',y);
% %n means 2 decimal places

%% example 4 
% printing multiple values
a=2;
b=7.5;
fprintf('a=%d, b=%.2f \n',a,b);
% f to control the decimal places

%% example 5
% printing text and strings

name='Yudai';
fprintf('Hello %s !\n',name);
tt='Today is a nice day';
fprintf('What is today     %s \n',tt);

%% example 6
% formatting alignment
fprintf('% 10s %6.2f \n','Score:',92.5);
% %6.2 means 6 for integer 2 for decimal places
% 10s means the length of the charactor I put (the normal length is 16 is general)

%% example 7
% using disp
disp('Hello eveyone')

%% example 8
v=[1,2,3,4];
disp(v)

A=[1,2;3,4];
disp(A)

%% example 9


% can I use disp in this way 
disp('x='+x)
% correct way
disp((['x= ',num2str(x)]))

%% example 10

r=5;
area = pi*r^2;
disp([' the area of the circle is',num2str(area)]);
fprintf('the area of the circle is %f \n',area);

%% example 11
a=7;
disp(a>5)
disp(a<5)

% for logial, 1 means true and 0 means false

%% example12
% what is the out put for 
disp(' ')
disp('new section starts here')

