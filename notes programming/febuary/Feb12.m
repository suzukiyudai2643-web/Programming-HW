%% Example 1 Print numbers from 1 to 8

for i=1:8
    disp(i)
end
%% Example 2 Print od numbers form 1 to 99
for i=1:10
    k=2*i;
    disp(k)
end
%% Example 3 Compute sum

s=0;
for i=1:100
    s=s+i;
end

disp(s)

%% Example  Sum of Even numbers

s=0;
for i=2:2:10
    s=s+i;
end
disp(s)
%% Emaple 4 create a vector
v=zeros(1,5);
k=1;
for i=2:2:10
    v(k)=i;
    k=k+1;
end
disp(v)

%% Example 5 disp characters of a string

str='MATLAB';
for i=1:length(str)
    disp(str(i))
end

%% Example 6 compute the squares of 1 to 6


for i=1:6
    disp(i^2)
end

s=0;

for j=1:6
    s=s+j^2;
    disp(s)
end

%% Example 7  multiply each element by 3
v=[2 4 6];
for i=1:length(v)
    v(i)=3*v(i);
end
disp(v)


%% Example 8
m=1;
for i=1:5
    m=m*i;
end
disp(m)

%% Example 9 while loop frint numbers from 1 to 7

i=1;
while i<=7
    i=i+1;
    disp(i)
end

% showing 1 to 8, checking before adding 1

i=1;
while i<=7
    disp(i)
    i=i+1;
end
% showing 1 to 7, checking after adding
%% Example  print even numbers less than 10
i=0;
while i<10
    disp(i)
    i=i+2;
end
% 
% i=8;
% while i<10
%     disp(i)
%     i=i-2;
% end

%% Example Sum numbers from 1 unitil sum exceeds 20

i=0;
s=0;
while s<=120
    disp(s)
    i=i+1;
    s=s+i;
end

pause


