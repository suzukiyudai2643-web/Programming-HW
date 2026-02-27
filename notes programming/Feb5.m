%% Example 1: simple if

% x=input('Enter an integer = ');
x=5;
if x>0
    disp('x is positive')
end

%% Example 2: if-else statement
x=-5;
if x>=0
    disp('x is nonnegative')
else
    disp('x is negative')
end

%% Example 3: if-elseif-else
x=0;
if x>0
    disp('x is positive')
elseif x<0
    disp('x is negative')
else
    disp('x=0')
end

%% Example 4: even or odd

% == stands for logical
x=5;
if mod(x,2)==0
    disp('x is an even number')
else
    disp('x is an odd number')
end

%% Example 5: write a code for letter grades
%x=input('Enter a score = ');
x=98;
if x>100
    disp('A+')
elseif x>=90
    disp('A')
elseif x>=80
    disp('B')
elseif x>=70
    disp('C')
elseif x>=60
    disp('D')
elseif x>=0
    disp('F')
else
    disp('error')
end

%% Example 6: write a code for an absolute value
x=-5;
if x>=0
    y=x;
else
    y=-x;
end
fprintf('The absolute value of %d is %d \n',x,y)
% first %d for x, second %d for y

%% Example 7: 
% above 18 and a US citizen
% you are eligible to vote or not
% age =input('enter your age');
% citizen=input('Are you a US citizen?');
% 
% if age>=18 && yes
%     print('you are eligible to vote')
% else
%     print('you are not eligible to vote')
% end

%% Example 8 Nested if

x=10;
if x>0
    if x<5
        disp('x is between 0 and 5')
    else
        disp('x is greater than or equal to 5')
    end
else
    disp('x is non-positive')
end
%% Example 9
%v=input('enter a vector');
v=[2 3 4];
if length(v)<3
    disp('vector is too short')
elseif length(v)>3
    disp('vector is too long')
else 
    disp('correct length')
end