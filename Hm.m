function H=HM(h)
if (iscolumn(h)==0)
    h = h';
end;
H=eye(length(h))-2/(h'*h)*(h*h');
