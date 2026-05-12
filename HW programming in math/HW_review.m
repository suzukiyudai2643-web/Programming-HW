%% HW1
%% Q2
x=exp(1);
y=pi;
fprintf('%f,%f\n',x,y)
z=x;
x=y;
y=z;
fprintf('%f,%f\n',x,y)

%% Q5
x=input('enter the width: ');
y=(30-(x+pi*x/2))/2;
Area=x*y+((x/2)^2)*pi/2;
%% Q5'

window(10);
disp(ans)

%% HW2
% Q2
score_list=input('scores as a list: ');
sum=0;
for i=1:length(score_list)
    sum=sum+score_list(i);
end
average=sum/length(score_list);
fprintf('the average is %f\n',average)
disp(['the average is ',num2str(average)])
%% Q3
value=100*pi;
fprintf('value=%e\n',value)

%% HW3
% Q1
weight=input('inter how much it weighs in pounds: ');
if weight<=0
    disp('invalid weight')
elseif weight>100
    disp('weight cannot exceed 100 pounds')
else 
    cost=15;
    if weight>70
        cost=cost+15;
    end
    cost=cost+(weight-2)*5;
    fprintf('the total cost is %f\n',cost)
end
%% Q2
x=input('enter x value: ');
if x>1
    y=log(1-(1-x));
    fprintf('y=%f\n',y)
else
    disp('unaccepted x-value')
end
%% Q3
day_num=menu('choose day','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
week_day(day_num)


%% HW 4
% Q2
n=input('enter what term you need: ');
fibo1=1;
fibo2=1;
for i=2:n
    keep=fibo1;
    fibo1=fibo1+fibo2;
    fibo2=keep;
end
disp(fibo1)

%% HW5
% Q1
x=0:0.1:10;
y1=exp(-x.^2).*sin(x);
plot(x,y1,'b-','LineWidth',2)
legend('e^{-x^2}sinx')
title('y=e^{-x^2}sinx')
xlabel('x')
ylabel('y')
grid on
%% Q2
x=linspace(0,pi,100);
y1=sin(2*x);
y2=exp(-x.^2);
figure(1)
plot(x,y1,'r',x,y2,'g')
legend('sin2x','e^{-x^2}')
title('y=sin2x, e^{-x^2}')
xlabel('x')
ylabel('y')

figure(2)
y3=cos(2*x);
plot(x,y3,'r',x,y2,'g')
legend('cos2x','e^{-x^2}')
title('y=cos2x, e^{-x^2}')
xlabel('x')
ylabel('y')

%% Q3
x=0:0.05:10;
y1=sin(x);
y2=sin(2*x);
y3=cos(x);
y4=cos(2*x);

subplot(2,2,1)
plot(x,y1,'y')
grid on
legend('sinx')
title('y=sinx')

subplot(2,2,2)
plot(x,y2,'g')
grid on
legend('sin2x')
title('y=sin2x')
xlabel('x')
ylabel('y')
subplot(2,2,3)
plot(x,y3,'b')
grid on
legend('cosx')
title('y=cosx')
xlabel('x')
ylabel('y')
subplot(2,2,4)
plot(x,y4,'r')
grid on
legend('cos2x')
title('y=cos2x')
xlabel('x')
ylabel('y')



%% Q3
function [day]=week_day(day_num)
switch day_num
    case 2
        disp('it is Monday')
    case 3
        disp('it is Tuesday')
    case 4
        disp('it is Wednesday')
    case 5
        disp('almost Friday!')
    case 6
        disp('TGIF!!')
    otherwise
        disp('enjoy weekends!!')
end
end


        
%% Q5' 
function [Area]=window(x)
y=(30-(x+pi*x/2))/2;
Area=x*y+((x/2)^2)*pi/2;
end
