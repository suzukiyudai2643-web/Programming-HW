% Example 2
% spiral motion
function spiral_motion()
figure;
for t=1:200
    theta=linspace(0,4*pi,200);
    r=linspace(0,5,200);
    x=r.*cos(theta+t*0.05);
    y=r.*sin(theta+t*0.05);
    % color change using if
    if mod(t,3)==1
        c='r';
    else
        c='g';
    end
    plot(x,y,c,'LineWidth',2)
    axis([-6 6 -6 6])
    grid on
    title('Spiral Animation')
    pause(0.05)
end
end
