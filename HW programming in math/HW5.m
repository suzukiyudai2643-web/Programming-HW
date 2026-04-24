%% Q1
x=linspace(0,10,100);
y1=exp(-x.^2).*sin(2*x);
y2=exp(-x.^2).*cos(2*x);
plot(x,y1,'-b','LineWidth',2)
grid on
hold on
plot(x,y2,'--r','LineWidth',3)

title('e^{-x^2}sin(2x),e^{-x^2}cos(2x)')
xlabel('x')
ylabel('y')
legend('e^{-x^2}sin(2x)','e^{-x^2}cos(2x)')

hold off
%% Q2

x=linspace(0,pi,100);
y1=sin(2*x);
y2=exp(-x.^2);
y3=cos(2*x);

figure(1)
plot(x,y1)
grid on
hold on
plot(x,y2)
title('sin(2x), e^{-x^2}')
xlabel('x')
ylabel('y')
legend('sin(2x)','e^{-x^2}')
hold off

figure(2)
plot(x,y3)
grid on
hold on
plot(x,y2)
title('cos(2x), e^{-x^2}')
xlabel('x')
ylabel('y')
legend('cos(2x)','e^{-x^2}')
hold off

%% Q3
x=0:0.05:10;
y1=sin(x);
y2=sin(2*x);
y3=cos(x);
y4=cos(2*x);
subplot(2,2,1)
plot(x,y1)
grid on
xlabel('x')
ylabel('y')
title('sin(x)')
legend('sin(x)')

subplot(2,2,2)
plot(x,y2)
grid on
xlabel('x')
ylabel('y')
title('sin(2x)')
legend('sin(2x)')

subplot(2,2,3)
plot(x,y3)
grid on
xlabel('x')
ylabel('y')
title('cos(x)')
legend('cos(x)')

subplot(2,2,4)
plot(x,y4)
grid on
xlabel('x')
ylabel('y')
title('cos(2x)')
legend('cos(2x)')