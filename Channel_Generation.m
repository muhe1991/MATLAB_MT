close all;
clear; 

alpha = 3;
k = 100;
r_k = 5;
density = 0.001;
X_size = 100;
Y_size = 100;


MaxDist = 5;
NumRuns = 1;

rho = zeros(1,NumRuns);
gerschgorin_max = zeros(1,NumRuns);
gerschgorin_min = zeros(1,NumRuns);
inf_norm = zeros(1,NumRuns);
rayleigh = zeros(1,NumRuns);
determinant = zeros(1,NumRuns);
NumD2Dpairs = zeros(1,NumRuns);

for run = 1:NumRuns
    % using Poisson process to generate a number of D2D pairs
    % using max() to avoid 0 value, at least 1
    % NumD2Dpairs(run) = max(round(poissrnd(density*X_size*Y_size)),1);
    NumD2Dpairs(run) = 5;
    
    onevec = ones(NumD2Dpairs(run),1);
    
    % generate random location of UEs
    % rand returns a number from [0, 1)
    SenderPos = zeros(2,NumD2Dpairs(run));
    for i = 1:NumD2Dpairs(run)
        SenderPos(1,i) = rand*X_size;
        SenderPos(2,i) = rand*X_size;
    end

    ReceiverPos = zeros(size(SenderPos));
    for i = 1:NumD2Dpairs(run)
        dist = rand*MaxDist;
        angle = rand*2*pi;
        ReceiverPos(1,i) = SenderPos(1,i) + dist*cos(angle);
        ReceiverPos(2,i) = SenderPos(2,i) + dist*sin(angle);
    end

    % For Displaying
    scatter(SenderPos(1,:),SenderPos(2,:),'b');
    hold on
    scatter(ReceiverPos(1,:),ReceiverPos(2,:),'r');

    for i = 1:NumD2Dpairs(run)
        plot([SenderPos(1,i),ReceiverPos(1,i)],[SenderPos(2,i),ReceiverPos(2,i)],'k');
    end
    
    % The Channel Matrix
    H = zeros(NumD2Dpairs(run));

    for i = 1:NumD2Dpairs(run)
        for j = 1:NumD2Dpairs(run)
            H(i,j) = norm(ReceiverPos(:,i)-SenderPos(:,j))^(-alpha);
        end
    end
    
    % The Normalized Channel Matrix
    V = zeros(NumD2Dpairs(run));
    for i = 1:NumD2Dpairs(run)
        V(i,:) = H(i,:)./H(i,i);
    end

    T = diag(rand(1,NumD2Dpairs(run)));
    S = diag(diag(T)./(1-diag(T)));
    K_T = T*V;
    
    % Spectral Radius
    rho(run) = mean((K_T)^(k+1)*onevec./((K_T)^k*onevec));

end

% calculation Foschini Matrix
gama_dB = 5; %dB
gama = dBToLinear(gama_dB); %linear

% make the diagonal of V to be 0, that is Foschini Matrix
F = (V - V.*eye(size(V))) .* gama;

max(eig(F))