

function [P] = mypolyval(Polynomial, x)
        L = length(Polynomial);
        K = L-1:-1:0
        N = repmat(x,1,L);
        Z = N.^(K);
        G = Polynomial.*Z;
        P = sum(G);               
end