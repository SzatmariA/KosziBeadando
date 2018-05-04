function H=Hm(h)
    if (iscolumn(h)==0)
        h=h';
    end
    H=eye(length(h))-2/(h’*h)*(h*h’);
    H=@(h) eye(length(h)) - 2/(h’*h)*h*h’;
    n=4;
    A=rand(n)
    Q=eye(n);
    for k=1:n-1
        HH=eye(n);
        ak=A(k:n,k);
        HH(k:n,k:n)=H(ak-sign(ak(1))*norm(ak,2)*eye(n+1-k,1));
        A=HH*A;
        Q=Q*HH;
    end
    Q*A
end
