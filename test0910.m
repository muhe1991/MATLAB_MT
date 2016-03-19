% set = [];
% radius = [];
% for i=1:size(F,1)
%     set = [set i];
%     newF = constructNewF(F, set);
%     newRadius = max(eig(newF));
%     radius = [radius newRadius];
% end
% 
% plot(radius);
% 
% totalLink = 10;
% allSet = perms(1:10);
% set = allSet(1:)
% count = 
% a= a(randperm(length(a)));
% 
% a = 1:3;
% perms(a)


count = 200;
right = 0;
for i = 1:count
    order = 1:10;
    order = order(randperm(length(order)));
    radius = [];
    set = [];
    for i=1:size(F,1)
        set = [set i];
        newF = constructNewF(F, set);
        newRadius = max(eig(newF));
        radius = [radius newRadius];
    end
    if radius ~= sort(radius)
        right = right+1;
    end
end
