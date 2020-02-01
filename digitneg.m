%Question No:3
%DIGITAL NEGATIVE

function digitneg(x)
f=imread(x);
L=max(max(f));
g=L-f;
imshow(f), figure, imshow(g);
end
