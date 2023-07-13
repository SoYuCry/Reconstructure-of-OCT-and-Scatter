function img_kernel = MolKernel_1(x_inx,y_inx,x_pos,y_pos,mag)
%Simulation
%img_kernel = (exp(-2*(((x_inx-x_pos)/mag).^2+((y_inx-y_pos)/mag).^2)/1.72^2) + 0.0208*exp(-2*(sqrt(((x_inx-x_pos)/mag).^2+((y_inx-y_pos)/mag).^2)-2.45).^2/1.10^2));
           
%110123 A647 data
%img_kernel = 0.7082 * exp(-2*(((x_inx-x_pos)/mag).^2+((y_inx-y_pos)/mag).^2)/1.75345^2) ...
%               +0.3209*exp(-2*(sqrt(((x_inx-x_pos)/mag).^2+((y_inx-y_pos)/mag).^2)-0.43046).^2/1.97672^2);
           
%110211 mEos Data
% img_kernel = 0.87694 * exp(-2*(((x_inx-x_pos)/mag).^2+((y_inx-y_pos)/mag).^2)/1.69217^2) ...
%                + 0.12321 * exp(-2*(((x_inx-x_pos)/mag).^2+((y_inx-y_pos)/mag).^2)/2.38311);

%OCT PSF(30*30)
%x_mean y_mean x_stddev y_stddev
%16.28621663866009 16.204891788082463 2.85995359884472 0.9197278257959397
%amplitude theta
%1.1374000264079844 -0.02641266384563104
%img_kernel_1 = 1.1374*(exp(-(((x_inx-x_pos)/mag-16.28622).^2/2/2.85995.^2+((y_inx-y_pos)/mag-16.20489).^2/2/0.91973.^2)));

%OCT PSF(20*20)
%x_mean y_mean x_stddev y_stddev
%10.322234287074304 10.152606451117803 2.5841801761424983 0.9391819974907089
%amplitude theta
%1.0833707041308716 -0.02950770769949345
%img_kernel = 1.0834*(exp(-(((x_inx-x_pos)/mag).^2/2/2.5842.^2+((y_inx-y_pos)/mag).^2/2/0.93918.^2)));
%4.940050257950041 4.262119682883233 1.512535493151706 1.112775301982611
% 20.spe:
% img_kernel = 1.0225*(exp(-(((x_inx-x_pos)/mag).^2/2/1.5125.^2+((y_inx-y_pos)/mag).^2/2/1.1128.^2)));
% 3.spe
% img_kernel = 0.976065*(exp(-(((x_inx-x_pos)/mag).^2/2/1.473123.^2+((y_inx-y_pos)/mag).^2/2/1.232116.^2)));
% im.png
img_kernel = 1.088324*(exp(-(((x_inx-x_pos)/mag).^2*2/1.085062.^2+((y_inx-y_pos)/mag).^2*2/1.456368.^2)));
%img_kernel = 1.088324*(exp(-(((x_inx-x_pos)/mag).^2/1.456368.^2+((y_inx-y_pos)/mag).^2/1.085062.^2)));
end