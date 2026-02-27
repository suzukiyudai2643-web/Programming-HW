%% Example 1

% n=randi([3 10]);
% runsum=0;
% for i=1:n
%     inputnum=input('enter a number:  ');
% runsum=runsum+inputnum;
% end
% fprintf('The sum is %.2f\n', runsum);

%% Example 2:
% % create a vector of length n it prompts the user and puts n numbers into a
% % vector
% 
% % randi means randum integer between
% 
% % list the matrix column by column
% n=randi([4 8]);
% numvec=zeros(2,n);
% for iv=1:n
%     for j=1:2
%     inputnum=input('Enter a nubmer: ');
%     numvec(j,iv)=inputnum;
%     end
% end
% fprintf('The vector is : \n')
% disp(numvec)
% % numvec(2,:) to show the second row
% % numvec(:,2) to show the second column

%% Example 3: using subplot
% for i=1:2
%     x=linspace(0,2*pi,100*i);
%     y=sin(x);
%     subplot(1,2,i);
%     plot(x,y,'ko')
%     xlabel('x')
%     ylabel('sin(x)')
%     title(['the plot of sine with number of points %d\n',100*i])
% end

%% Example 4: print stars

% rows=10;
% columns=10;
% % for i=1 to i=rows
% for i=1:rows
%     for j=1:columns
%         fprintf('*')
%     end
%     fprintf('\n')
% end
% 
%% Example 5:
% 
% for i=1:3
%     for j=1:2
%         fprintf('i=%d, j=%d \n',i,j)
%     end
%     fprintf('\n')
% end

%% Example 6: multipliation table

rows=12;
columns=12;
% 
x=zeros(rows,columns);

for i=1:rows
    for j=1:columns
        x(i,j)=i*j;
    end
end
disp(x)

