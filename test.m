clc
clear all

transmissionMatrix = [4.27e-8, 1.41e-10, 3.97e-10;
    8.59e-12, 7.39e-9, 2.60e-10;
    6.26e-11, 5.44e-10, 7.2e-9];

% transmissionMatrix = [1, 2, 3;
%     4, 5, 6;
%     7, 8, 9];


matrix = zeros(3,3);

sinr_dB = 5;
sinr = db2mag(sinr_dB);

for i=1:3
    for j=1:3
        if i~=j
            matrix(i,j) = sinr*transmissionMatrix(i,j)/transmissionMatrix(i,i);
        end
    end
end

matrix
radius = max(eig(matrix))  

normest(matrix(:,1))
normest(matrix(:,2))
normest(matrix(:,3))

num = 0;
old = 0;
for i=1:3
    new = normest(matrix(:,i));
    if (new>old)
        num = i;
        old = new;
    end
end

matrixnew = matrix;
matrixnew(num,:)=[]
matrixnew(:,num)=[]

radius = max(eig(matrixnew))
