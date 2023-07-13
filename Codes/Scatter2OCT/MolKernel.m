function img_kernel = MolKernel(x_inx,y_inx,x_pos,y_pos,mag)

% fit
img_kernel = 1.088324*(exp(-(((x_inx-x_pos)/mag).^2/2/1.45.^2+((y_inx-y_pos)/mag).^2/2/1.08.^2)));
% 平方
% img_kernel = (1.088324*(exp(-(((x_inx-x_pos)/mag).^2/2/1.456368.^2+((y_inx-y_pos)/mag).^2/2/1.085062.^2))) ...
%     .* cos(2*pi*(y_inx-y_pos)/mag/0.84*4.1)).^2;
% 取绝对值
% img_kernel = abs(1.088324*(exp(-(((x_inx-x_pos)/mag).^2/2/1.456368.^2+((y_inx-y_pos)/mag).^2/2/1.085062.^2))) ...
%     .* cos(2*pi*(y_inx-y_pos)/mag/0.84*4.1));

% oct  sigma_x = 0.8382, sigma_y = 0.645
%img_kernel = exp(-1/2*((x_inx-x_pos)/mag).^2/(0.84*30000/pi/1740/5.5).^2) .* exp(-((y_inx-y_pos)/mag).^2/(sqrt(log(2))*0.84*0.84/pi/0.05/4.1).^2);
%img_kernel = exp(-1/2*((x_inx-x_pos)/mag).^2/(0.84*30000/pi/1740/5.5).^2) .* exp(-((y_inx-y_pos)/mag).^2/(sqrt(log(2))*0.84*0.84/pi/0.05/4.1).^2) .* cos(2*pi*(y_inx-y_pos)/mag/0.84*4.1);



end