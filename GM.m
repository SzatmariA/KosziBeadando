function G = GM(p,q,st,ct)
   

    G = eye(3);
    
    %G = I + (cost-1)*(I(p,:)*I(p,:)' + I(q,:)*I(q,:)') + sint*(I(p,:)*I(q,:)' - I(q,:)*I(p,:)');
    G(p,p) = ct;
    G(q,p) = -st;
    G(p,q) = st;
    G(q,q) = ct;
    
    
end