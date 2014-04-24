% Function myparallel

function [R] = myparallel(X)
    Rs = 0;
    for j=1:length(X);
        Ri = (1/X(j));
        Rs = Rs + Ri;
    end
    R = (Rs)^(-1);
end

