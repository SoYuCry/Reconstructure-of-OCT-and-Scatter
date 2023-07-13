% 用途：多张平均

clc
clear all
% 图像文件的目录
dirName = 'D:\Faker\ImportantFile\SciencetificResearch\T2Displacement_整理\SourceData\water2_30'; 

% 读取目录中所有 jpg 图像
imgFiles = dir(fullfile(dirName, '*.tif')); 

% 获取图像的数量
numImgs = length(imgFiles); 

% 读取第一张图像
firstImg = imread(fullfile(dirName, imgFiles(1).name)); 

% 将图像转换为 double 型
imgDouble = double(firstImg); 

% 对于每张剩余的图像
for i = 2:numImgs 
    % 读取图像
    thisImg = imread(fullfile(dirName, imgFiles(i).name)); 
    
    % 将图像转换为 double 型并添加到总和中
    imgDouble = imgDouble + double(thisImg); 
end

% 计算平均值，并确保所有的像素值都在 0 到 65535 的范围内
avgImg = imgDouble / (numImgs * 65535); 

% 将平均图像转换回 uint16 型以进行显示
avgImg = uint16(avgImg * 65535); 

% 显示平均图像
imshow(avgImg, [0 65535]); 

