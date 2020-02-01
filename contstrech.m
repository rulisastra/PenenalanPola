%Question No:2
%CONTRAST STRETCHING

function contstrech(x)
f=imread(x);
L=max(max(f));
a=input('Enter the lower range, a = ');
b=input('Enter the higher range, b = ');
al=input('Enter alpha value= ');
be=input('Enter beta value = ');
ga=input('Enter gamma value = ');
va=al*a;
vb=be*(b-a)+va;
[M,N]=size(f);
        for x = 1:M
            for y = 1:N
                if(f(x,y)<a)
                  g(x,y)=al*f(x,y);     
                elseif(f(x,y)>=a & f(x,y)<b)
                    g(x,y)=be*(f(x,y)-a)+va;
               else
                    g(x,y)=ga*(f(x,y)-b)+vb;
                end
            end
        end
imshow(f), figure, imshow(g);
end