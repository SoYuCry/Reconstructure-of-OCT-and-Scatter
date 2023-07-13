function img_kernel = MolKernel_1(x_inx,y_inx,x_pos,y_pos,mag)

img_kernel = 1.088324*(exp(-(((x_inx-x_pos)/mag).^2/2/1.456368.^2+((y_inx-y_pos)/mag).^2/2/1.085062.^2))) .* cos(2*pi*(y_inx-y_pos)/mag/0.84*4.1);
%img_kernel = 1.088324*(exp(-(((x_inx-x_pos)/mag).^2/2/14.5.^2+((y_inx-y_pos)/mag).^2/2/10.8.^2))) .* cos(2*pi*(y_inx-y_pos)/mag/0.84*4.1);
%img_kernel = 1.088324*(exp(-(((x_inx-x_pos)/mag).^2/2/14.5.^2+((y_inx-y_pos)/mag).^2/2/10.8.^2))) .* sin(2*pi*(y_inx-y_pos)/mag/0.84*4.1);

%img_kernel = exp(-1/2*((x_inx-x_pos)/mag*pi*1740/5.5/0.84*5.5/30000*5.5).^2) * exp(-(pi*(y_inx-y_pos)/mag/sqrt(log(2))*0.05/4.1/0.84*4.1/0.84*4.1).^2) * cos(2*pi*y_pos/mag/0.84*4.1);



end