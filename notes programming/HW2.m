%% Q1
x1=0;
y1=0;
x2=pi;
y2=exp(1);

P1=[x1,y1];
P2=[x2,y2];


disp(['the distance between two given points is ',num2str(((x1-x2)^2)+((y1-y2)^2)^(1/2))])
%% Q2

%P=input('three scores as a row [x y z]');
% HW2
% the distance between two given points is 12.5879
% three scores as a row [x y z][78 62 91]
% the average of the given score is 77.000000 
% value=3.141593e+02
% value=314.159265
% value=314.159
% value=    314.1593

P=[78 62 91];
fprintf('the average of the given score is %f \n', (P(1)+P(2)+P(3))/3)

%% Q3
x=100*pi;
% %e stands for the scientific notation
% %f stands for fixed-decimal notation, without any numbers behind, it gives
% 6 decimal places in general
% %g stands for general format
% %12.4f stands for fixed-decimal notation. 12 means the length in total,
% including the spaces, 4 means the decimal places
fprintf('value=%e\n', x)
fprintf('value=%f\n',x)
fprintf('value=%g\n',x)
fprintf('value=%12.4f\n',x)