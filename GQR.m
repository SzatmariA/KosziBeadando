function [Q,R] = GQR(A)
  [m,n] = size(A);
  Q = eye(m);
  R = A;

  for j =n:1
    for k = n:2
      G = eye(m);
      %[c,s] = givensrotation( R(i-1,j),R(i,j) );
       %G([i-1, i],[i-1, i]) = [c -s; s c];
      G=GM(j-1,k,1,2);
      R = G'*R;
      Q = Q*G;
    end
  end

end