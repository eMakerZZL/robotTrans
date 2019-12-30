hold on;

radius = 10;
height = 100;
segments = 180;

theta = linspace(0, 2 * pi, segments);
points = zeros(segments,3,2);

points(:,1,1) = radius .* cos(theta);
points(:,2,1) = radius .* sin(theta);
points(:,3,1) = ones(1,segments) .* (height / 2);

points(:,1,2) = radius .* cos(theta);
points(:,2,2) = radius .* sin(theta);
points(:,3,2) = ones(1,segments) .* (-height / 2);

plot3(points(:,1,1),points(:,2,1),points(:,3,1));
plot3(points(:,1,2),points(:,2,2),points(:,3,2));

for i = 1 : segments
    line([points(i,1,1),points(i,1,2)],...
         [points(i,2,1),points(i,2,2)],...
         [points(i,3,1),points(i,3,2)]);
end
