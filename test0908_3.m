Matrix = 0.5*ones(5,5);
max(eig(Matrix))

Fzeros = F;
Fzeros(find(Fzeros<1))=0;

max(eig(Fzeros))
Fzeros(20,:) = [];
Fzeros(:,20) = [];

% 12
inner12 = dot(F(12,:),F(:,12)');

% 14
inner14 = dot(F(14,:),F(:,14)');

% 20
inner20 = dot(F(20,:),F(:,20)');

Fnew = F;
Fnew(14,:) = [];
Fnew(:,14) = [];

% 12
inner12 = dot(Fnew(12,:),Fnew(:,12)');

% 14
%inner14 = dot(F(14,:),F(:,14)');

% 20
inner20 = dot(Fnew(19,:),Fnew(:,19)');
