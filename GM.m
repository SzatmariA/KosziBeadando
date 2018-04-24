function G = GM(p,q,st,ct)
    G= eye(5);
    G(p,p) = ct;
    G(q,p) = -st;
    G(p,q) = st;
    G(q,q) = ct;
    
    
end