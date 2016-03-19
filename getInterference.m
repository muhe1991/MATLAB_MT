function [interference] = getInterference(feasibleSet, undeterminedLink, F)

interference = 0;
for i=1:length(feasibleSet)
    interference = interference + F(feasibleSet(i),undeterminedLink);
    interference = interference + F(undeterminedLink,feasibleSet(i));
end

end
