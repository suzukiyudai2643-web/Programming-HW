function [pf,c2,c3]=check_prime(c)
squarenumbers=(0:floor(c/3)).^2;

pf=[];
c2=[];
c3=[];


while true
    if isprime(c)==1
        pf(end+1)=c;
       
        break
    end
    if mod(c,2)==0
        
        c=c/2;
        
        pf(end+1)=2;
        continue
    end
end

    % pf(end+1)=c


    a=floor(c/3);
    
    b=1;
    while a^2-c>=0
        B=a^2-c;
        existsa=any(squarenumbers==A);
        existsb=any(squarenumbers==B);
        if existsa==1
            pf(end+1)=a;
            pf(end+1)=a;
            break

        elseif existsb==1
            
            b=find(squarenumbers==B)-1;
            
            c2=a+b;
            c3=a-b;
            
            break
        
        
        end
        a=a-1;
    end

pf(end+1)=c2;
pf(end+1)=c3;
    pf(end+1)=c;

prime_factor=pf;
end

