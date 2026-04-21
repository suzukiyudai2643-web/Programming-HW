%% Example 1
% basic menues
clear 
clc

choice=menu('chose calculation','addition','subtraction','multiplication','division');
a=10;
b=5;
switch choice
    case 1
        result=a+b;
        disp(['result= ',num2str(result)])
    case 2
        result=a-b;
        disp(['result= ',num2str(result)])
    case 3
        result=a*b;
        disp(['result= ',num2str(result)])
    case 4
        result=a/b;
        disp(['result= ',num2str(result)])

end

%% Example 2
clear
clc
while true
    choice=menu('calculator menu','square a number','cube a number','exit');
    switch choice
        case 1
            x=input('enter a number: ');
            disp(['square=',num2str(x.^2)])
        case 2
            x=input('enter a number; ');
            disp(['cube=',num2str(x^3)])
        case 3
            disp('exiting program...')
            break
    end
end

%% Example 3
clear 
clc

mainChoice=menu('main menu','math','plotting','exit');
switch mainChoice
    case 1
        mathChoice=menu('math menu','square','square root');
        x=input('enter a number: ');
        if mathChoice==1
            disp(x.^2);
        else
            disp(sqrt(x))
        end
    case 2
        fplot(@(x) sin(sin(x)))
        title('sin(sinx)')
        hold on
        fplot(@(x) sin(x))
        title('sinx')
        hold off
    case 3
        disp('goodbye')
end
%% Example 4
choice=menu('select a function to plot:','x^2','sin(x)', 'exp(x)');
figure

switch choice
    case 1
        fplot(@(x) x.^2)
        title('y=x^2')
    case 2
        fplot(@(x) sin(x))
        title('y=sinx')
    case 3
        fplot(@(x) exp(x))
        title('y=exp(x)')
end

grid on

%% Example 5
% mid-point
clear 
clc

f=@(x) x.^2;
a=0;
b=2;
n=10;
sum=0;
h=(b-a)/n;
choice=menu('numerical integration method','trapezoidal rule','midpoint rude');
switch choice
    case 1
        for i=1:n-1
            sum=sum+f(a+i*h);
        end
        result=(h/2)*(f(a)+2*sum+f(b));
        disp(['trapezoidal rule result=',num2str(result)])

    case 2
        sum=0;
        for i=0:n-1
            sum=sum+f(a+(i+0.5)*h);
        end
        result=h*sum;
        disp(['midpoint rule result=',num2str(result)])
end

        

