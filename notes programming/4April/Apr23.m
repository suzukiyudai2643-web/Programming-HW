%% Example 5
choice=menu('Choose an animation:','Bouncing Ball','Spiral Motion','sine_wave','random walk','exit');
while choice~=5
    if choice==1
        bouncing_ball();
    elseif choice==2
        spiral_motion();
    elseif choice==3
        sine_wave();
    elseif choice==4
        random_walk();
    end
end
