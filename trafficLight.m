function trafficLight()
figure
xlim([-40 40]);
ylim([0, 80]);
rectangle('Position',[-8 20 16 50],'FaceColor',[0 0 0],'Curvature',.2) %black rect
hold on
rectangle('Position',[-2 2 4 18],'FaceColor',[.8 .8 .8])    %gray rect
hold on
% the two yellow shapes 
rectXpoints = [-2 -2 2 2 -2];          
rectYpoints = [13 16 19 16 13];
fill(rectXpoints,rectYpoints,[1 1 0])
hold on 
rectXpoints = [-2 -2 2 2 -2];
rectYpoints = [5 8 12 8 5];
fill(rectXpoints,rectYpoints,[1 1 0])
hold on 

for i=1:1:5
rectangle('Position',[-6 55 12 12],'FaceColor',[1 0 0],'Curvature',[1 1])
rectangle('Position',[-6 40 12 12],'FaceColor',[0.5 .5 0],'Curvature',[1 1])
rectangle('Position',[-6 25 12 12],'FaceColor',[0 .5 0],'Curvature',[1 1])
pause(1)
rectangle('Position',[-6 55 12 12],'FaceColor',[.5 0 0],'Curvature',[1 1])
rectangle('Position',[-6 40 12 12],'FaceColor',[1 1 0],'Curvature',[1 1])
rectangle('Position',[-6 25 12 12],'FaceColor',[0 .5 0],'Curvature',[1 1])
pause(1)
rectangle('Position',[-6 55 12 12],'FaceColor',[.5 0 0],'Curvature',[1 1])
rectangle('Position',[-6 40 12 12],'FaceColor',[.5 .5 0],'Curvature',[1 1])
rectangle('Position',[-6 25 12 12],'FaceColor',[0 1 0],'Curvature',[1 1])
pause(1)
end

end



