%HW3

%% Q1

x=50;

y=0;
if x>100
    disp('too heavy package, no more than 100 pounds')
else 
    x=x-2;
    y=y+15;
    while x>=0.5
    x=x-1;
    y=y+5;
    end
    disp(y)
end

%% Q2

% x = input('Enter a value for x (must be less than 1): ');
x=1-exp(1);


if x < 1
    y = log(1/(1 - x));   
    fprintf('for x= %f\n    y= %f\n', x, y);
else
    
    error('x has to be less than 1')
end
% Enter a value for x (must be less than 1): .1
% for x= 0.100000
%     y= 0.105361

% or

% Error using HW3
% x has to be less than 1


%% Q3

disp(week_day(1));
disp(week_day(2));
disp(week_day(3));
disp(week_day(4));
disp(week_day(5));
disp(week_day(6));
disp(week_day(7));
disp(week_day(8));


function name = week_day(day_num)
switch  day_num
    case 1 
        name ='Monday';
    case 2
        name='Tuesday';
    case 3
        name='Wednesday';
    case 4
        name='Thursday';
    case 5
        name='Friday';
    case 6 
        name='Saturday';
    case 7
        name='Sunday';
    otherwise
        name='invalid number';
end
end
