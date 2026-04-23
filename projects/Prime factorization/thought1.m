%% primary thought
clear
clc
squarenumbers=(1:2:1001).^2;
disp(squarenumbers)

c=input('enter a natural nubmer: ');
factor=1;
while true
    if c==1
        fprintf('\n')
        disp('program success')
        break
    end
    if mod(c,2)==0
        c=c/2;
        factor=factor*2;
        fprintf('%d,',factor)
        continue
    end
    k=floor(c/3);
    for a=1:k
        B=c-a^2;
        exists=any(squarenumbers==B);
        if exists==1
            b=find(squarenumbers==B);
            c1=a+b;
            c=a-b;
            fprintf('%d,%d,',c1,c)

        elseif B<0
            fprintf('%d,',a)
            c=1;
        elseif exists==0
            continue
        
        end
    end
end


    

    
