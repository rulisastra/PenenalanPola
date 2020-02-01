%Question No:9
%IMAGE SKEWING

function skewing(x)
f=imread(x);
[r,c]=size(f);
shx=input('Enter the shearing parameter shx (between 0 and 1) = ');
shy=input('Enter the shearing parameter shy (between 0 and 1)= ');
for i=1:r
    for j=1:c
        x=i+shx*j;
        y=j+shy*i;
       T(round(x),round(y))=f(i,j);
    end
end
imshow(f), figure, imshow(T);
