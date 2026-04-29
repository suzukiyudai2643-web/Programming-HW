c=input('enter a natural nubmer: ');
pf=[];
if c==1
    disp('empty product')
end
squarenumbers=(0:floor(c/3)).^2;
while mod(c,2)==0
    pf(end+1)=2;
    c=c/2;
end
if c~=1
pf(end+1)=c;
end
while true
    if c==1
         break
    end
    for i=1:length(pf)
        check=0;
        
        if isprime(pf(i))==0
            use_this(pf(i));
            pf(i)=[];
            pf(end+1)=ans(1);
            pf(end+1)=ans(2);
            check=1;
            break

        end
    end
    if check==0
        break
    end
end
pf=sort(pf);
disp(pf)


