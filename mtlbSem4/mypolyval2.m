

function[P] = mypolyval2(Polynomial, x)
    x = x';
    lp = length(Polynomial);
    lx = length(x);
    a = lp-1:-1:0;
    b = repmat(x,1,lp);
    c = repmat(a,lx,1);
    d = b.^c;
    e = repmat(Polynomial,lx,1);
    f = d.*e;
    g = sum(f);
    P = sum(g);
end