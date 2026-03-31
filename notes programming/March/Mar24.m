%% Example 1

x=input('enter an integer greater than 1:');

sum=0;


for k=1:x
    
    sum=sum+k;
end


fprintf('the sum of integers from 1 to %d is %d\n',x,sum)

%% Example 2

x=input('enter a natural number:');

f=1;

for k=1:x
    f=f*k;
end
fprintf('%d!=%f\n',x,f)
a=log10(f);
if f==1
    disp(1)
else
    disp(ceil(a))
end

%% Example 3

x=input('enter 3 numbers');

max=x(1);
location=1;

for i=2:length(x)
    if max<x(i)
        max=x(i);
        location=i;
    elseif max==x(i)
        fprintf('at %d,',i)
    end

end

fprintf('%d\n',location)
fprintf('maximum value %d\n',max)

    
%% Example 4
p=input('enter a natural number:');

x=1;
disp(x)
disp(x)
i=1;
while i<=p-2
    x=x+i;
    disp(x)
    i=i+x;
     disp(i)
end




















