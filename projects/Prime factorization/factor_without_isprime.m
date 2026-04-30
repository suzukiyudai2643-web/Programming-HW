%% Main script
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
        use_this(pf(i));
        if ans(2)~=1
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
%% function
function [ans]=use_this(c)
squarenumbers=(0:floor(sqrt(c))).^2;
a=floor(sqrt(c));
ans=[0 0];
while true
    B=a^2-c;
    existsb=any(squarenumbers==B);
    if existsb==1
        b=find(squarenumbers==B)-1;
        k=a+b;
        l=a-b;
        ans(1)=k;
        ans(2)=l;
        break
    end
    if a>c/3
        break
    end
    a=a+1;
end
end

