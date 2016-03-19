I = imread('TUM.png');
Inew = I(1:1000,1:1000,:);
J = imresize(Inew, 1.2);
figure, imshow(Inew), figure, imshow(J)
imwrite(J,'TUMnew.png');