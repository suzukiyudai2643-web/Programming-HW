%% Ex1 : Find the area of circle with radius r.

function A=Jan27Ex1(r)
% A is the Area
%r is the radius
A=pi*r^2;
end

%% FInd the Volume of sylinder witrh input r,h r is radius h is the
% hight
function V= Jan27Ex2(r,h)
% V = volume
% r = radius
% h = hight
%V=((pi)*r^2)*h;
%or
V=(Jan27Ex1(r))*h;



%fprintf(' the volume of sylinder is %d /n',V)
%fprintf(' the volume of sylinder is %e /n',V)
%fprintf(' the volume of sylinder is %f /n',V)
disp('the volume of sylinder is /n')

end