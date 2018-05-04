function [Q R]=HQR(A)
n=length(A);
Q=eye(n);
for k=1:(n-1)
    HH=eye(n);
    a=A(k:n,k);
    h=a-norm(a,2)*eye(n-k+1,1);
    HH(k:n,k:n)=HM(h);
    A=HH*A;
    Q=HH*Q;
end
R=A;