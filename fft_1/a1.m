close all

% Image
I = imread('cameraman.tif');
figure, imagesc(I); colormap gray; title('Original image'); 
[rows, cols] = size(I);
% Fourier transform
F = ifftshift(fft2(I))./rows./cols;

% Show spectrum (log)
figure, imagesc(log(abs(F))); title('Fourier transform (abs log)'); 

% Grid of FFT coordinates
[rows, cols] = size(F);
[ux, uy] = meshgrid(([1:cols]-(fix(cols/2)+1))/(cols-mod(cols,2)), ...
    ([1:rows]-(fix(rows/2)+1))/(rows-mod(rows,2)));

% Convert to polar coordinates
th = atan2(uy,ux);
r = sqrt(ux.^2 + uy.^2);

% Convert to polar coordinates
Fr = F .* r;
figure, imagesc(abs(Fr)); title('Fourier transform x radius'); 
rcoords = linspace(0,sqrt(ux(1,1)^2 + uy(1,1)^2),rows);
thcoords = linspace(0,2*pi,cols);
[ri,thi] = meshgrid(rcoords,thcoords);
[x,y] = pol2cart(thi,ri);
Fp = interp2(ux,uy,abs(Fr),x,y);
figure, imagesc(Fp); title('Fourier transform in polar coordinates');

% Sum columns to give 1D projection
F1D = sum(Fp);
figure, plot(rcoords,F1D); title('Projection onto 1D'); xlim([0 0.5]);