% Example 3
sine wave animation

function sine_wave()
figure;
for k=1:100
    x=linspace(0,2*pi,200);
    y=sin(0.5*x+k*0.2);
    plot(x,y,'LineWidth',2);
    axis([0 2*pi -1.5 1.5])
    grid on
    % if condition for title
    if max(y)>0.9
        title('High peak Wave');
    else
        title('normal wave')
    end
    pause(0.05)
end
end