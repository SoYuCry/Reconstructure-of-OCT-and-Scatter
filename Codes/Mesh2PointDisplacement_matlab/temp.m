% clc
% clear all
% rng default;
% x = 0:0.05:1;
% y = 0:0.05:1;
% z = 0:0.05:1;
% % x = rand(30,1)
% DT = delaunayTriangulation(x',y',z')
% clc
% clear all
% 
% TR = stlread('x_surface_0.stl')
% TR2 = stlread('x_surface_10.stl')

% 设置模拟范围    
xMin = -5;    
xMax = 5;    
yMin = -5;    
yMax = 5;    
zMin = -5;    
zMax = 5;

% 设置矩阵大小和分辨率    
m = 100;    
n = 100;    
p = 10;

% 生成模拟矩阵    
X = rand(m, n, p);    
Y = rand(m, n, p);    
Z = rand(m, n, p);

% 将矩阵元素归一化    
X = X / max(X(:));    
Y = Y / max(Y(:));    
Z = Z / max(Z(:));

% 设置散射势分布函数    
f = @(x, y, z) exp(-(x.^2 + y.^2 + z.^2));

% 创建三维向量表示散射源位置    
sourcePos = [0.5 0.5 0.5; 0.5 -0.5 -0.5; -0.5 0.5 0.5];

% 计算散射势    
[X, Y, Z] = meshgrid(-p:p/2:2*p-1, -p:p/2:2*p-1, -p:p/2:2*p-1);    
F = f(X, Y, Z);

% 绘制三维散射矩阵    
figure;    
hold on;    
grid on;    
view(3);    
mesh(X, Y, Z);    
title('3Dscattering Matrix');    
xlabel('X');    
ylabel('Y');    
zlabel('Z');    
colormap(hot);    





