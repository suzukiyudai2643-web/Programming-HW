%% Example 1
clear
clc

% global variable 

global x
x=10;
myfunction()
function myfunction()
global x
x=x+5;
end
%% Example 2
 

global counter
counter=0;
increment();
disp(counter)

function increment()
global counter
counter=counter+1;
end
