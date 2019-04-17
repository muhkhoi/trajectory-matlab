%% Author: epokh
%% Website: www.epokh.org/drupy
%% This software is under GPL

function PlotXYZRPY(px,py,pz,pitch,roll,yaw)
Tsfer=Tras(px,py,pz)*RPY(roll,pitch,yaw);
plotT(Tsfer);
set(gcf,'Renderer','OpenGL')
set(gcf,'RendererMode','manual')
set(gcf, 'name', 'Trajectory Viewer')
hold on;
