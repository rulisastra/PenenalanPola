%Question No:13
%SPATIAL AVERAGING/LOW-PASS FILTERING

function spatiallp(x)
f=imread(x);
f=im2double(f);
[r,c]=size(f);
for i=1:r
    for j=1:c
        ip=i+1;
        im=i-1;
        jm=j-1;
        jp=j+1;
        if(im<1)
            im=i;
        elseif (ip>r)
            ip=i;
        end
        if(jm<1)
            jm=j;
        elseif (jp>c)
            jp=j;
        end
            
        T(i,j)=(1/2)*(f(i,j)+ (1/4)*(f(i,jm)+f(i,jp)+f(ip,j)+f(im,j)));
        S(i,j)=(1/9)*(f(i,j)+ f(i,jm)+f(i,jp)+f(ip,j)+f(im,j)+f(im,jm)+f(ip,jm)+f(ip,jp)+f(im,jp));
    end
end
imshow(f), figure, imshow(T),figure,imshow(S);
