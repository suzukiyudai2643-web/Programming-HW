%% Example 1: basic switch
% similar to if-else statement

day=3;

switch day
    case 1
        disp('Monday')
    case 2
        disp('Tuesday')
    case 3 
        disp('Wednesday')
    otherwise
        disp('invalid day')
end

%% Exmple 2: switch with strength

color='green';
switch color
    case 'red'
        disp('stop')
    case 'green'
        disp('go')
    case 'yellow'
        disp('caution')
    otherwise
        disp('unknown color')
end

%% Example 3: multiple cases in one branch
x=2;

% use {} to make a list of numbers

switch x
    case {1,3,5}
        disp('odd number')
        case{2,4,6}
        disp('even number')
    otherwise
        disp('out of range')
end

%% Example 4: calculateor using switch
a=8;
b=4;
op='/';
switch op
    case '+'
        result=a+b;
    case'*'
        result=a*b;
    case'-'
        result=a-b;
    case'/'
        result=a/b;
    otherwise
        error('unknown operator')
end
disp(result)

% use error to display an error message

%% Example 5: menu selection
% choice=input('choice number to make a new file, enter 1 to open, enter 2');
choice=3;

switch choice
    case 1
        disp('new file')
    case 2
        disp('open file')
    case 3
        disp('save file')
    otherwise
        disp('invalid choice')
end

%% Example 6: logical condition in switch ture
x=-5;
switch true
    case x>0
        disp('positive')
    case x<0
        disp('negative')
    otherwise
        disp('0')
end

%% Example 7: season
month=2;
switch month
    case {12,1,2}
        disp('Winter')
    case {3,4,5}
        disp('Spring')
    case{6,7,8}
        disp('Summer')
    case{9,10,11}
        disp('Fall')
    otherwise
        disp('invalid month')
end

%% Example 8

T=20;
if T<10
    disp('Cold')
elseif T<25
    disp('Warm')
else
    disp('Hot')
end

%% Example 9

day='Saturday';
switch day
    case{'Saturday','Sunday'}
        disp('Weekend')
    otherwise
        disp('Weekday')
end

%% Example 10: using if or switch
score=82;
if score >=90
    grade='A';
elseif score >=80
    grade='B';
elseif score>=70
    grade='C';
else
    grade='F';
end
disp(grade)
% switch example
switch true
    case score >=90
        grade='A';
    case score>=80
        grade='B';
    case score >=70
        grade='C';
    otherwise
        grade='F';
end
disp(grade)




