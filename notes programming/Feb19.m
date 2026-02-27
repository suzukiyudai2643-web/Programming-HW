%% Example 1
% % multiplication table 1-5
% for i=1:5
%     for j=1:5
%         fprintf('%4d',i*j);
%     end
%     fprintf('\n');
% end

%% Example 2
% % only print even products
% % mod(product,2)==0
% 
% % mod(product,2)~=0
% % means not even
% for i=1:4
%     for j=1:4
%         product=i*j;
%         if mod(product,2)==1
%             fprintf('%4d', product)
%         end
%     end
%     fprintf('\n')
% end

%% Example 3
% % simple counter grid
% i=1;
% while i<=3
%     j=1;
%     while j<=4
%         fprintf('(%d,%d)',i,j);
%         j=j+1;
%     end
%     fprintf('\n');
%     i=i+1;
% end

%% Example 3: print numbers >5

% i=1;
% while i<=4
%     j=1;
%     while j<=4
%         value=i+j;
%         if value >5
%             fprintf('%d ', value)
%         end
%         j=j+1;
%     end
%     fprintf('\n')
%     i=i+1;
% end

%% Example 4:
% i=1;
% j=1;
% for i=1:4
%     for j=1:i
%         fprintf('%d ',j)
%     end
%     fprintf('\n')
% end

%% Example 5 print prime numbers
% i=1;
% for i=1:50
%     if isprime(i)==1
%         fprintf('%d \n',i)
%     end
% end

% prime number in matrix
% generate a 4 by 4 matrix of random integers between 1 and 53
% using nested loops:
% check each elements
% display only the prime numbers


A = randi([1,53],4,4);
disp(A)

for i=1:4
    for j=1:4
        x=A(i,j);
        if isprime(x)==1
            fprintf('prime %d\n',x)
        end
        
    end
end
fprintf('\n')

        
%% Example 6

% print star 
% *****
% * *
% ***
% * *
% *****
n=5;
for i=1:n
    for j=1:n
        if i==1||i==n||j==1||j==n||(i==3 && j==3)
            fprintf('*')
        else
            fprintf(' ')
        end
    end
    fprintf('\n')
end





    
