% Example 4
% random walk
function radom_walk
x1=0; y1=0;
x2=2; y2=2;
figure
hold on
steps=0;
while steps<300
    dir=randi(4);
    % move using if
    if dir==1
        x1=x1+1;
    elseif dir==2
        x1=x1-1;
    elseif dir==3
        y1=y1+1;
    else
        y1=y1-1;
    end
    plot(x1,y1,'bo');
    axis([-20 20 -20 20])

    grid on 
    title('randum walk')
    pause(0.05)
    steps=steps+1;
end
while steps<300
    dir=randi(4);
    % move using if
    if dir==1
        x2=x2+1;
    elseif dir==2
        x2=x2-1;
    elseif dir==3
        y2=y2+1;
    else
        y2=y2-1;
    end
    plot(x2,y2,'r');
    axis([-20 20 -20 20])

    grid on 
    title('randum walk')
    pause(0.05)
    steps=steps+1;
end
end
