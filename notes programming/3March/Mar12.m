%% Example 1
% simple MATLAB movie
figure
for k=1:50
    x=k;
    y=k;
    plot(x,y,'ro','MarkerSize',10,'MarkerFaceColor','r')
    axis([0 60 0 60])
    M=getframe; % capture frame
end
movie(M) % play movie
%% Example 2
figure 
x=linspace(0,2*pi,100);
for k=1:60
    y=sin(x+k/5);
    plot(x,y,'b','LineWidth',2)
    axis([0 2*pi -1.5 1.5])
    M=getframe;
end
movie(M,3) % playing movie 3 times

%% Example 3

% Saving the movie as a video file
v=VideoWriter('sine_movie.avi');
open(v)
x=linspace(0,2*pi,100);
for k=1:60
    y=sin(x+k/5);
    plot(x,y,'b','LineWidth',2)
    axis([0 2*pi -1.5 1.5])
    frame=getframe(gcf);
    writeVideo(v,frame)
end
close(v)
%% Example 4
figure
for k=1:100
    t=linspace(0,4*pi,200);
    x=(k/50)*cos(t);
    y=(k/50)*sin(t);
    plot(x,y,'r','LineWidth',2)
    axis([-2 2 -2 2])
    axis equal
    M=getframe;
end
movie(M)
%% Example 5
% planet Orbit Simulation
figure
theta=linspace(0,2*pi,200);
for k=1:length(theta)
    x=cos(theta(k));
    y=sin(theta(k));
    plot(0,0,'yo','Markersize',20,'MarkerFaceColor','y')
    hold on
    plot(x,y,'bo','MarkerSize',20,'MarkerFaceColor','b')
    hold off
    axis([-1.5 1.5 -1.5 1.5])
    axis square
    M=getframe;
end
movie(M,3)

%% Example 6
figure 
x=0;
y=0;

for k=1:200
    x=x+randi([-1 1]);
    y=y+randi([-1 1]);
    plot(x,y,'ro','MarkerFaceColor','r')
    hold on 
    plot(x,y,'b')
    hold off
    axis([-30 30 -30 30])
    M=getframe;

end

movie(M)

%% Example 7
% wave interfence
% 2 waves combining together
figure
x=linspace(0,4*pi,200);
for k=1:100
    y1=sin(x+k/5);
    y2=sin(x-k/5);
    y=y1+y2;
    plot(x,y1,'LineWidth',2)
    plot(x,y2,'LineWidth',2)
    plot(x,y,'LineWidth',2)
    axis([0 4*pi -2.5 2.5])
    M=getframe;
end
movie(M)

%% Example 8
figure
x=rand(5,1)*10;
y=rand(5,1)*10;
vx=randn(5,1);
vy=randn(5,1);
for k=1:150
    x=x+vx;
    y=y+vy;
    vx(x>10 | x<0)=-vx(x>10 | x<0);
    vy(y>10 | y<0)=-vy(y>10 | y<0);
    scatter(x,y,100,'filled')
    axis([-2 12 -2 12])
    M=getframe;
end
movie(M)

%% Example 9
% solar system simulation

figure
theta=linspace(0,2*pi,200);
for k=1:200
    plot(0,0,'yo','Markersize',20,'MarkerFaceColor','y')
    hold on
    plot(2*cos(theta(k)),2*sin(theta(k)),'bo','MarkerFaceColor','b')
    plot(3*cos(theta(k)),3*sin(theta(k)),'ro','MarkerFaceColor','r')
    hold off
    axis([-4 4 -4 4])
    axis square
    M=getframe;
end
movie(M)

