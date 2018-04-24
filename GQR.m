function [Q,R] =GQR(A) 
  n = size(A);
  Q = eye(n);
  
  for p = 1:(n-1)
    for q =p+1:n 
      GG = eye(n); %GG lol
      d = sqrt((A(q,p)^2) + (A(p,p)^2));
      cost = A(p,p)/d;
      sint= A(q,p)/d;
      G=GM(p,q,sint,cost);
      GG(p:q,p:q) = G(p:q,p:q);
      A = GG*A;
      Q = GG*Q;
    end
  end
Q = Q';
R=A;
end