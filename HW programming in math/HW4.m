%HW4

%% Q1

for t=-9:0.5:9
    if t>=0
        y=-3*t^2+5;
        fprintf('y(%g)=%g\n',t,y)
    else
        y=3*t^2+5;
        fprintf('y(%g)=%g\n',t,y)
    end
end


%% Q2

n=input('input which term you pick: ');
k=n;
x=1;
y=2;
if n<=2
    disp('n has to be greater than 2')
elseif mod(n,1)==0
    while n>2
    y=x+y;
    x=y-x;
    n=n-1;
    end
    if mod(k,100)==11
        fprintf('the %dth term of fibonacci sequence is %d\n',k,y)
    elseif mod(k,100)==12
        fprintf('the %dth term of fibonacci sequence is %d\n',k,y)
    elseif mod(k,100)==13
        fprintf('the %dth term of fibonacci sequence is %d\n',k,y)
    elseif mod(k,10)==1
        fprintf('the %dst term of fibonacci sequence is %d\n',k,y)
    elseif mod(k,10)==2
        fprintf('the %dnd term of fibonacci sequence is %d\n',k,y)
    elseif mod(k,10)==3
        fprintf('the %drd term of fibonacci sequence is %d\n',k,y)
    else
        fprintf('the %dth term of fibonacci sequence is %d\n',k,y)
    end
else 
    disp('invalid number')
end

%% Q3

n=input('enter values in vector form: ');
sum=0;
for i=1:length(n)
    sum=sum+(n(i)).^2;
end
rms=sqrt(1/length(n)*sum);
fprintf('the root-mean-square is %f\n',rms)
%enter values in matrix form: [10 5 2 5]
%the root-mean-square is 6.204837

%% Q4

n=input('enter values in vector form: ');
sum=0;
for i=1:length(n)
    sum=sum+1/n(i);
end
h=length(n)/sum;
fprintf('harmonic mean is %f\n', h)
% enter values in matrix form: [10 5 2 5]
% harmonic mean is 4.000000




