n=input('enter a natural number: ');
pf=[];
i=2;
while i<=floor(sqrt(n))
    l=0;
    k=n;
    while k>0
        k=k-i;
        l=l+1;
    end
   
    if k==0
        pf(end+1)=i;
        n=l;
        i=2;
        continue
    end
    i=i+1;

end
if n~=1
pf(end+1)=n;
end
pf=sort(pf);
disp(pf)

