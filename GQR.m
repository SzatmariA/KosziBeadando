function [Q,R] =GQR(A) % 
  n = size(A);
  Q = eye(n);
  R = A;
  

  for p = 1:(n-1)
    for q =p+1:n
        
      GG = eye(n); %GG lol
      d = sqrt((A(q,p)^2) + (A(p,p)^2));
      cost = A(p,p)/d;
      sint= A(q,p)/d;
      G=GM(p,q,sint,cost);
      %GG(p:q,p:q) = G
      A = G*A;
      A
      Q = Q*G;
    end
  end
R=A;
end