n=input('enter a natural number: ');
pf=[];
% create empty list for prime factors
i=2;
% start divisor from the smallest prime
if n==1
    disp('empty product')
    % consider the spacial case
end
while i<=floor(sqrt(n))
    % the largest amount for the smaller factor is floor of the square root
    l=0;
    % the number of subtraction we did from n
    k=n;
    % avoid changing n
    while k>0
        % check if i divides k by subtracting i from k until we get 0 or
        % negative
        k=k-i;
        l=l+1;
    end
   
    if k==0
        % this means i divides k
        pf(end+1)=i;
        % put i into the prime factor list
        n=l;
        % we subtracted i l-times from n. so n=i*l
        continue
        % skip i+1 process since we might have two "i"s in factor
    end
    i=i+1;
    % try next step
end
if n~=1
pf(end+1)=n;
% here adding the last prime into the list
end
pf=sort(pf);
% sort numbers in increasing order
disp(pf)
% display the result