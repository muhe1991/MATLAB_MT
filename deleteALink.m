function [newF] = deleteALink(oldF, link)
newF = oldF;
newF(:,link) = [];
newF(link,:) = [];
end