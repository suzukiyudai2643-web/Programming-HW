%% Example 1
% % why we have to declare a function??
% function testScope
% global g
% g=100;
% localVar=50;
% 
% nested()
% fprintf('Outside: global g=%d, lovalVar=%d \n',g,localVar)
% %what's nested??
% function nested
% 
% % global g
% g=g+10;
% localVar=localVar+10;
% fprintf('inside: g=%d, localVar=%d\n',g,localVar)
% 
% end 
% end

%% Example 2
% 
% function mainFunction
% 
% x=10;
% x=nestedFunction(x);
% fprintf('Final x=%d\n',x)
%     function y=nestedFunction(y)
%         y=y+5;
%     end
% end
% 

%% Example 3
% find the smallest n such that 1+2+...+n>50
sum=0;
n=1;
while true
    sum=0;
   for i=1:n
       sum=sum+i;
   end
   if sum>50
       fprintf('the smallest n is %d\n',n)
       break
      
   end
   n=n+1;
end

%% Example 4

% sum only even numbers from 1 to 20
sum=0;
for i=1:20
    if mod(i,2)==1
        % or mod(i,2)-=0 for odd numbers
        continue
        % brings to the end of the loop and back to the beginning of the
        % loop
    end
    sum=sum+i;
end
disp(sum)

%% Example 5
% 
% % stop adding numbers when the sum exceeds a global limit
% limit=input('enter a global limit: ');
% sum=0;
% n=1;
% while sum<=limit
% 
%     sum=sum+n;
%     n=n+1;
% end
% fprintf('the value exceeded when n=%d, sum value is %d\n',n,sum)

%% example 5'
% global limit
% limit=input('enter a global limit: ');
% 
% sum=0;
% i=1;
% while true 
%     sum=sum+i;
%     if checkLimit(sum)
%         break
%     end
%     i=i+1;
% end
% disp(sum)
% function flag=checkLimit(x)
% global limit
% flag=x>limit;
% end
%%
for i=20:1
    disp(i)
end
