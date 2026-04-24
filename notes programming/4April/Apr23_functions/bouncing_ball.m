% Example 1
% bouncing ball
function bouncing_ball

x=0;
y=0;
vx=0.15;
vy=0.12;

figure;
while true 
    x=x+vx;
    y=y+vy;
    % bounce 
    if abs(x)>5
        vx=-vx;
    end
    if abs(y)>5
        vy=-vy;
    end
    plot(x,y,'ro','MarkerFaceColor','r')
    axis([-6 6 -6 6]);
    grid on
    title('Bouncing Ball')
    pause(0.05);
end
end