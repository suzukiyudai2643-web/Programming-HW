%% Example 1: stop for loop early
for i=1:10
    disp(i)
    if i==5
        disp('Stpooing the loop early')
        break
    end
end

%% Example 2: stop while loop early

count=1;
while true
    disp(['count=',num2str(count)])
    if count>=3
        break %stop when count reaches 3
    end
    count=count+1;
end

%% Example 3
A=[3 7 2 9 5 8];
target=9;
for i=1:length(A)
    if A(i)==target
        disp(['target found at index',num2str(i)])
        break
    end
end

%% Example 4
% Nested loop
for i=1:3
    for j=1:3
        fprintf('i=%d, j=%d\n', i,j)
        if j==2
            disp('Breaking inner loop...')
            break
        end
    end
end

%% Example 5
a=1;
while a<2
    x=rand;
    disp(x)
    if x>=0.9
        disp('x>=0.9')
        break
    end
    

end

T=[];
% while true means doing it forever
while true
    x=rand;
    disp(x)
    if x>=0.9
        disp('condition met')
        break
    end
    T=[T x];
end
y=1:length(T);
plot(y,T)

%% Example 6
for i=1:10
    if mod(i,2)==0
        continue
    end
    disp(['corrent i= ',num2str(i)])
    if i==7
        disp('reached 7')
        break
    end
end

%% Example 7
A=[5 0 8 -1 -7 0 3];
for i=1:length(A)
    if A(i)==0
        disp(['skipping zero at position ',num2str(i)])
        continue
    end
    disp(['Value=',num2str(A(i))])
    if A(i)<0
        disp('Negative number found-breaking loop')
        break
    end
end


