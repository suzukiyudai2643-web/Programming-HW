n=input('enter a natural number: ');
pf=[];
check=0;
while true
    i=2;
    if n==2
        break
    elseif n==3
        break
    end
if i<=floor(sqrt(n))
    for i=2:floor(sqrt(n))
    if mod(n,i)==0
        pf(end+1)=i;
        n=n/i;
        i=2;
        break
    elseif i==floor(sqrt(n))
       check=1;
    end
    end
end
if check==1
    break
    
end


end

pf(end+1)=n;
pf=sort(pf);
disp(pf)
