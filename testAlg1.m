M = [4.72599e-009 2.90971e-010 9.85388e-012 3.30484e-011 8.71906e-011 ;
6.01377e-010 5.0121e-009 1.0079e-011 2.66691e-011 1.64608e-011 ;
8.86334e-012 8.57432e-011 2.50169e-009 8.6648e-010 4.64534e-012 ;
9.21341e-012 1.98047e-011 2.79004e-010 9.27095e-009 1.72021e-011 ;
1.84747e-010 1.50035e-011 2.92255e-012 1.27736e-011 3.61795e-009];
beta = zeros(1,5);
interference = 0;
for i=1:5
    for j=1:5
        if i==j
            continue;
        end
        interference = interference + M(i,j);
    end
    beta(i) = M(i,i)/interference;
    interference = 0;
end

rx = -57.2551;
inter1 = -69.3615;
inter2 = -84.0639;
inter3 = -78.8085;
inter4 = -74.5953;
inter = linearToDBm(dBmToLinear(inter1)+dBmToLinear(inter2)+dBmToLinear(inter3)+dBmToLinear(inter4))
rx-inter

transmissionMatrix = M;
sinrdB = 10 %9.5
sinrnew = dBmToLinear(sinrdB);
sinr = dBToLinear(sinrdB);
for i=1:5
    for j=1:5
        if i~=j
            matrix(i,j) = sinr*transmissionMatrix(i,j)/transmissionMatrix(i,i);
        end
    end
end
eig(matrix)
radius = max(eig(matrix))  

% normest(matrix(:,1))
% normest(matrix(:,2))
% normest(matrix(:,3))

num = 0;
old = 0;
for i=1:5
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

num = 0;
old = 0;
for i=1:4
    new = normest(matrixnew(:,i));
    if (new>old)
        num = i;
        old = new;
    end
end

matrixnew2 = matrixnew;
matrixnew2(num,:)=[]
matrixnew2(:,num)=[]

radius = max(eig(matrixnew2))

num = 0;
old = 0;
for i=1:3
    new = normest(matrixnew2(:,i));
    if (new>old)
        num = i;
        old = new;
    end
end

matrixnew3 = matrixnew2;
matrixnew3(num,:)=[]
matrixnew3(:,num)=[]

radius = max(eig(matrixnew3))