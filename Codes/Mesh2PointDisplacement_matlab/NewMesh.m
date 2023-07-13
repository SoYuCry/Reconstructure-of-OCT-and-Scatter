% rng default;
% x = rand([4 1]);
% y = rand([4 1]);
% z = rand([4 1]);
% DT = delaunayTriangulation(x,y,z)
% tetramesh(DT,'FaceAlpha',0.3);

% rng default;
% P = rand([4 2]);
% DT = delaunayTriangulation(P)
% IC = incenter(DT);
% triplot(DT)
% hold on
% plot(IC(:,1),IC(:,2),'*r')

rng default;
x = rand([30 1]);
y = rand([30 1]);
z = rand([30 1]);
DT = delaunayTriangulation(x,y,z)

tetramesh(DT,'FaceAlpha',0.3);