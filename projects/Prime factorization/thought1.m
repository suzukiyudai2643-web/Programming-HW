%% primary thought
clear
clc


c=input('enter a natural nubmer: ');
disp(prime_check(c))
function prime_factor=prime_check(c)
squarenumbers=(0:floor(c/3)).^2;

pf={};
while true

    if c==1
        fprintf('\n')
        break
    end
    if mod(c,2)==0
        
        c=c/2;
        
        pf{end+1}=2;
        continue
    end
    k=floor(c/3);
    a=k;
    while a^2-c>=0
        B=a^2-c;
        exists=any(squarenumbers==B);
        if exists==1
            b=find(squarenumbers==B);
            c2=a+b;
            c=a-b;
            
            break
        
        end
        a=a-1;
    end
    if isprime(c)==0
        pf{end+1}=prime_check(c);


    else
        pf{end+1}=c;

    end
    if isprime(c2)==0
        pf{end+1}=prime_check(c2);


    else
        pf{end+1}=c2;
        break

    end

end

prime_factor=pf;
end

