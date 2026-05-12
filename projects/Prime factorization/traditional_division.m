n=input('enter a natural number: ');
pf=[];
% create an empty list for the prime factors
check=0;
while true
    if n==1
        disp('empty product')
        % consider the spacial case
        break
    end
    i=2;
    % here, i is the divisor
    % telling function to start the loop from 2 every time
    if n==2
        break
    elseif n==3
        break
    end
if i<=floor(sqrt(n))
    % the largest amount for the smaller factor is floor of the square root
    for i=2:floor(sqrt(n))
        % here, i is the divisor
    if mod(n,i)==0
        pf(end+1)=i;
        % add i in the list
        n=n/i;
        % divide n by i
        break
        % break for loop and start over from begining but for c/i
    elseif i==floor(sqrt(n))
       check=1;
    end
    end
end
if check==1
    break
end
end
if n~=1
pf(end+1)=n;
% here adding the last prime into the list
end
pf=sort(pf);
% sort numbers in increasing order
disp(pf)
% display the result