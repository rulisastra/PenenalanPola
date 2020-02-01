%Question No:10
%IMAGE SLICING WITHOUT BACKGROUND

function slicing(x)
f=imread(x);
L=max(max(f));
a=input('Enter the lower range, a = ');
b=input('Enter the higher range, b = ');
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
                if(f(x,y)>=a & f(x,y)<=b)
                    g(x,y)=L;
                else
                    g(x,y)=0;
                end
            end
        end
imshow(f), figure, imshow(g);
end
