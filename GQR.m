function [Q,R] =GQR(A) % 
  n = size(A);
  Q = eye(n);
  R = A;
  

  for q =2:n
    for p = 1:(q-1)
      %G = eye(n);
      d = sqrt((A(q,p)^2) + (A(p,p)^2));
      cost = A(p,p)/d;
      sint= A(q,p)/d;
      %[c,s] = givensrotation( R(i-1,j),R(i,j) );
       %G([i-1, i],[i-1, i]) = [c -s; s c];
      G=GM(p,q,sint,cost)
      R = G*R;
      Q = Q*G;
    end
  end

end