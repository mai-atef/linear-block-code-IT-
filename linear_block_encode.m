p=input('input p matrix') ;
u=input('input the message matrix') ;
n=input('input n') ;
k=input('input k') ;
g=[p eye(k)] ;
disp('the encoded matrix is' );
v=encode(u,n,k,'linear/binary',g)';  %OR  v=mod(u*g,2)
disp(v);

