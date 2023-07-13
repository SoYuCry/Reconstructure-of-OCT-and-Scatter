% 创建一个全黑的32x32图像
image = zeros(32, 32, 'uint16');

% 计算最中间的像素坐标
center_x = round(size(image, 2) / 2);
center_y = round(size(image, 1) / 2);

% 设置最中间的四个像素为最大亮度
image(center_y-1:center_y, center_x-1:center_x) = 2^16 - 1;

% 显示生成的图像
imshow(image, []);

% 保存图像为文件（可选）
imwrite(image, 'output.png');
