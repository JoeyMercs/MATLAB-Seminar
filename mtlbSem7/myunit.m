% Joseph Mercedes
% Function that simulates the unit step

function [V] = myunit(start, endd)
        V = start:1:endd;
        for t = 1:length(V)
            if V(t) < 0
                V(t) = 0;
            else
                V(t) = 1;
            end
        end    
end
