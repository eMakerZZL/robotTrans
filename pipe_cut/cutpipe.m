close all;
clear all;
clc;
hold on;

length = 10;
width = 5000;
height = 800;

axis([-length length -width width -height height]);
view(60,40)

points = zeros(8, 3);
points(1, :) = [ length / 2 ,  width / 2  ,  height / 2];
points(2, :) = [ length / 2 , -width / 2  ,  height / 2];
points(3, :) = [-length / 2 , -width / 2  ,  height / 2];
points(4, :) = [-length / 2 ,  width / 2  ,  height / 2];
points(5, :) = [ length / 2 ,  width / 2  , -height / 2];
points(6, :) = [ length / 2 , -width / 2  , -height / 2];
points(7, :) = [-length / 2 , -width / 2  , -height / 2];
points(8, :) = [-length / 2 ,  width / 2  , -height / 2];

faces = zeros(6, 4);
faces(1, :) = [1 , 2 , 3 , 4];
faces(2, :) = [5 , 6 , 7 , 8];
faces(3, :) = [1 , 2 , 6 , 5];
faces(4, :) = [4 , 3 , 7 , 8];
faces(5, :) = [2 , 6 , 7 , 3];
faces(6, :) = [5 , 1 , 4 , 8];

tPoints = zeros(5,3);
for i = 1 : 6
    for j = 1 : 4
        tPoints(j,1) = points(faces(i,j),1);
        tPoints(j,2) = points(faces(i,j),2);
        tPoints(j,3) = points(faces(i,j),3);
    end
    tPoints(5,:) = tPoints(1,:);
    hlines = line(tPoints(:,1),tPoints(:,2),tPoints(:,3));
    set(hlines,'LineWidth',3,'Color','k','LineStyle','-');

    if (i <= 4)
        fill3(tPoints(1:4,1),tPoints(1:4,2),tPoints(1:4,3),[0.5 0.5 0.5]);
    end
end

