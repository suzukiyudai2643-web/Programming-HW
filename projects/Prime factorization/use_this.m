function [pf_1]=use_this(c)
squarenumbers=(0:floor(c/3)).^2;
a=floor(c/3);
pf_1=[];
while a^2-c>=0
    B=a^2-c;
    existsb=any(squarenumbers==B);
    if existsb==1
        % disp('reached here')
        b=find(squarenumbers==B)-1;
        k=a+b;
        l=a-b;
        pf_1(end+1)=k;
        pf_1(end+1)=l;
        break
    end
    a=a-1;
end
if B<0
    disp('error occured you are wrong, Yudai')
end
end