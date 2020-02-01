%Question No:14
%IMAGE THRESHOLDING

function threshold(x)
f=imread(x);
T=input('Enter a threshold value, T = ');
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
                if(f(x,y)<T)
                  g(x,y)=0;
               else
                  g(x,y)=255;
                end
            end
        end
imshow(f), figure, imshow(g);
end