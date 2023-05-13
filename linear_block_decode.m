g=input('input generator matrix');
[k,n]= size(g);
x = n-k ;
p=g(:,1:x);                  %************??????***********%
h=[eye(x) transpose(p)] ;
disp('H matrix is ');
disp(h) ;
v=input('input the receive code word');
htra = transpose(h) ;
s= v*htra ;
s = mod(s,2) ;
disp('the syndrome vector is');
disp(s); 
if sum(s)==0
    disp('no errors') ;
    disp('the decoded message is ');
    for i=1:length(v)
        u=v(x+1:n) ;
        disp(u) ;
        break;
    end
else
   for i=1:size(transpose(h),1)            %????? ??? ??? ??????
       if (htra(i,1:x)==s)
           v(i)=1 - v(i);
           break;
       end
   end
   
   disp('the error was in the bit:');
   disp(i);
   disp('the new received message without errors:');
   disp(v);
   disp('the decoded message is:');
   for i=1:length(v)
       u=v(x+1:n);
       break ;
   end
end
   disp(u) ;
   
    