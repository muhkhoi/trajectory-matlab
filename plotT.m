%% Author: epokh
%% Website: www.epokh.org/drupy
%% This software is under GPL

%%input: transformation matrix of a point
%%output: a figure representing position and orientation of the point

function plotT(T)

persistent px1;     %initial variable empty garis hitam
persistent py1;
persistent pz1;



px=T(1,4);
py=T(2,4);
pz=T(3,4);
nx=T(1,1);
ny=T(2,1);
nz=T(3,1);
ox=T(1,2);
oy=T(2,2);
oz=T(3,2);
ax=T(1,3);
ay=T(2,3);
az=T(3,3);

if isempty (px1)
   px1=px;
     
end
if isempty (py1)
   py1=py;
   
end
if isempty (pz1)
   pz1=pz;  
end

hold on
grid on
%%plot garis item
line([px1,px],[py1,py],[pz1,pz],'LineWidth',1,'Color','black');
pz1 = pz;
py1 = py;
px1 = px;
daspect([1 1 1])
plot3(px,py,pz,'ro');
xlabel('x');
ylabel('y');
zlabel('z');
%%plot garis ijo biru merah + rpy
line([px,px+nx],[py,py+ny],[pz,pz+nz],'LineWidth',1,'Color','blue');
line([px,px+ox],[py,py+oy],[pz,pz+oz],'LineWidth',1,'Color','red');
line([px,px+ax],[py,py+ay],[pz,pz+az],'LineWidth',1,'Color','green');
view(15,45);
title('Trajectory');
set(gcf, 'MenuBar', 'none');
set(gcf, 'ToolBar', 'none');
hold off
end