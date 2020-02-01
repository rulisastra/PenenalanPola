%Question No:6
%RANGE COMPRESSION

function rgcompress(x)
%Range compression
f=imread(x);
f=im2double(f);
c=input('Enter the constant value, c = ');
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
               g(x,y)=c*log10(1+abs(f(x,y)));
            end
        end
imshow(f), figure, imshow(g);
end
