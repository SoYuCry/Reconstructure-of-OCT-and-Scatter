function img_est = MolEst_eps_new(img_raw,len,A,phi)

b = img_raw(:);

n = len;

cvx_begin
    variable x(n)
    minimize(norm( A * x - b, 2 ) + phi*norm( x, 1 ))
    subject to
        x >= 0;
cvx_end

img_est = x;