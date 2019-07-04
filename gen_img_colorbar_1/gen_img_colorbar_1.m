% 生产渐变彩条

function img_out = gen_img_colorbar_1(height, width);

img_r=[];
img_g=[];
img_b=[];
for i = 1:(width/255+1)
    [r,g,b] = gen_color_bar_1(i);
    img_r = [img_r,r];
    img_g = [img_g,g];
    img_b = [img_b,b];
end

img_r = img_r/255;
img_g = img_g/255;
img_b = img_b/255;

for i = 1:height
    k=1;
    for j = 1:width
        img_2(i,j, 1) = img_r(j);
        img_2(i,j, 2) = img_g(j);
        img_2(i,j, 3) = img_b(j);
        k=k+1;
    end
end

img_out = img_2;

function [r,g,b] = gen_color_bar_1(sel)

n=256;
c0=ones(1,n)*[0]    ;
c1=ones(1,n)*[255]  ; 
ci=0:255;
cd=255:-1:0;

s=mod(sel,6);

if     s==1 r=c1; g=c0; b=cd;
elseif s==2 r=c1; g=ci; b=c0;
elseif s==3 r=cd; g=c1; b=c0;
elseif s==4 r=c0; g=c1; b=ci;
elseif s==5 r=c0; g=cd; b=c1;
elseif s==0 r=ci; g=c0; b=c1;
end
