function G = GM(p,q,st,ct)
    A = [12,-51,4;6,167,-68;-4,24,-41];
    
    d = sqrt((A(q,p)^2) + (A(p,p)^2));
    cost = A(p,p)/d;
    sint= A(q,p)/d;

    G = eye(length(A));
    
    %G = I + (cost-1)*(I(p,:)*I(p,:)' + I(q,:)*I(q,:)') + sint*(I(p,:)*I(q,:)' - I(q,:)*I(p,:)');
    G(p,p) = cost;
    G(q,p) = -sint;
    G(p,q) = sint;
    G(q,q) = cost;
    
    
end