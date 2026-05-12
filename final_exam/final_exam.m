%% Q1
income=input('enter income: ');
MI=0.015*income;
% Medicare Ievy
if income<0
    disp('invalid income')
elseif income<=6000
        IT=0;
elseif income<=34000
    income=income-6000;
    IT=income*0.15;
elseif income<=80000
    income=income-34000;
    IT=4200+income*0.3;
elseif income<180000
    income=income-80000;
    IT=18000+income*0.4;
else
    income=income-180000;
    IT=58000+0.45*income;
end
total_tax=MI+IT;
fprintf('Medicare Ievy is $%.2f\nIncometax is $%.2f\ntotal tax would be $%.2f\n',MI,IT,total_tax)

%% Q2
% a)
M=zeros(7,5);
for i=1:2
    for j=1:2
        M(i,j+3)=ones(1);
    end
end
for i=1:5
    M(2+i,i)=eye(2,2);
end
disp(M)
% b)
M=zeros(4,6);
for i=1:4
    M(i,1)=ones(1);
end
for i=1:4
    M(i,1+i)=eye(1);
end
disp(M)

%% Q3
% I didn't have time for this question

% today=input('date in square bracket ex:[05 12 2026] for May 12. 2026');
% date=today(2);
% month=today(1);
% year=today(3);
% %difference
% dif=(year-2026)*365;
% dif=dif+(date-12);
% switch month
%     case 1
%     case 2
%         dif=dif+31;
%     case 3
%         dif=dif+31+28;
%     case 4
%         dif=dif+31+28+31;
%     case 5
%         dif=dif+31+28+31+30;
%     case 6
%         dif=dif+31+28+31+30+31;
%     case 7
%         dif=dif+31+28+31+30+31+30;
%     case 8
%         dif=dif+31+28+31+30+31+30+31;
%     case 9
%         dif=dif+31+28+31+30+31+30+31+31;
%     case 10
%         dif=dif+31+28+31+30+31+30+31+31+30;
%     case 11
%         dif=dif+31+28+31+30+31+30+31+31+30+31;
%     case 12
%         dif=dif+31+28+31+30+31+30+31+31+30+31+30;
%     otherwise
%         disp('invalid month')
% end
% if date<1
%     disp('invalid date')
% elseif date>31
%     disp('invalid date')
% elseif mod(date,1)~=0
%     disp('invalid date')
% else
%     dif=dif+(date-1);
% end
% 
% if mod(year,1)~=0
%     disp('invalid year')
% elseif year<0
%     disp('invalid year')
% elseif year<=2026
%     while year~=2026
%         if mod(year,400)
%             if month<=2
%                 if 
% 
% elseif year>2026
% 
% 
%             end
%         end
%     end
% end
% 
% 


%% Q4
clear all
clc
i=1;
count=0;
while true
    if i^3>3000
        fprintf('%d^3=%d\n',i,i^3)
        count=count+1;
    end
    if count==10
        break
    end
    i=i+1;
end
%15^3=3375
%16^3=4096
%17^3=4913
%18^3=5832
%19^3=6859
%20^3=8000
%21^3=9261
%22^3=10648
%23^3=12167
%24^3=13824
% I didn't consider negative since cube of negative is still negative

%% Q5
% consider x~=0, -4
g=@(x) 10/(x^2+4*x);
N0=input('enter N0: ');
p0=input('enter initial apporximation: ');
TOL=input('enter tolerance: ');
i=1;
while i<=N0
    p1=g(p0);
    p2=g(p1);
    p=p0-((p1-p0)^2)/(p2-2*p1+p0);
    if abs(p-p0)<TOL
        fprintf('root found %f\n',p)
        break
    end
    i=i+1;
    p0=p;
    if i==N0
        fprintf('Method failed after %dth interations\n',N0)
    end
end
% enter N0: 100
% enter initial apporximation: 1.5
% enter tolerance: 0.0000001
% root found 1.365230

%% Q6 
f=@(x) x^4-3*x^3+x^2+x+1;
% N0=input('enter N0: ');
% TOL=input('enter tolerance: ');
% Ps=input('enter three approximations: ');
N0=100;
TOL=0.00001;
Ps=[0.5 1.0 1.5];
p0=Ps(1);
p1=Ps(2);
p2=Ps(3);
h1=p1-p0;
h2=p2-p1;
s1=(f(p1)-f(p0))/h1;
s2=(f(p2)-f(p1));h2;
d=(s2-s1)/(h2+h1);
i=3;
while i<=N0
    b=s2+h2*d;
    D=(b^2-4*f(p2)*d)^(1/2);
    if abs(b-D)<abs(b+D)
        E=b+D;
    else
        E=b-D;
    end
    h=-2*f(p2)/E;
    p=p2+h;
    plot(i,p,'bo')
    title('find root of equation x^4-3*x^3+x^2+x+1=0')
    hold on
    xlabel('the number of iteration')
    ylabel('p')
    if abs(h)<TOL
        fprintf('root found in %dth interation, %f\n',i,p)
        break
    end
    p0=p1;
    p1=p2;
    p2=p;
    h1=p1-p0;
    h2=p2-p1;
    s1=(f(p1)-f(p0))/h1;
    s2=(f(p2)-f(p1))/h2;
    d=(s2-s1)/(h2+h1);
    i=i+1;
    if i==N0
        disp('THe procedure was unsuccessful')
        break
    end
end
% root found in 7th interation, 1.389391

%% Q7

exact=exp(-1);
approx=1;
n=0;
while abs(exact-approx)>0.0001
    n=n+1;
    approx=(1-1/n)^n;
end
fprintf('approxmated to %f, n=%d\n',approx,n)

% approxmated to 0.367779, n=1840

%% Q8
disp(2)
disp(3)
% since we obviously know 2,3 are primes
p=4;
k=2;
while true
    for j=2:floor(sqrt(p))
        if mod(p,j)==0
            break
        end
        if j==floor(sqrt(p))
            disp(p)
            k=k+1;
            break
        end
    end
    if k==100
        break
    end
    p=p+1;
end
% I did now list them since I thought that would be too long to poblish