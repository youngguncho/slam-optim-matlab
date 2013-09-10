function JLn=lnJacobianSyms(rd11, rd12, rd13, rd21, rd22, rd23, rd31, rd32, rd33)

%syms rd11  rd12  rd13  rd21  rd22  rd23  rd31  rd32 rd33 real

%Rd=[rd11 rd12 rd13; rd21 rd22 rd23; rd31 rd32 rd33];

Ln=ArotMat(rd11, rd12, rd13, rd21, rd22, rd23, rd31, rd32, rd33)
JLn=jacobian(Ln, [rd11 rd12 rd13 rd21 rd22 rd23 rd31 rd32 rd33]);


% syms theta costh real
% 
% JLn= subs (JLn, acos(rd11/2 + rd22/2 + rd33/2 - 1/2), theta);
% 
% JLn= simple(subs (JLn, (rd11/2 + rd22/2 + rd33/2 - 1/2), costh))


% % another way to compute the same
% 
% jLn1=jacobian(b, [rd11 rd12 rd13 rd21 rd22 rd23 rd31 rd32 rd33]).*r(1) ;
% jLn2=jacobian(b, [rd11 rd12 rd13 rd21 rd22 rd23 rd31 rd32 rd33]).*r(2) ;
% jLn3=jacobian(b, [rd11 rd12 rd13 rd21 rd22 rd23 rd31 rd32 rd33]).*r(3) ;
% 
% jLnb=[jLn1;jLn2;jLn3];
% 
% jLnr=b.*jacobian(r, [rd11 rd12 rd13 rd21 rd22 rd23 rd31 rd32 rd33]);
% 
% jLn = jLnb + jLnr;

% jLn= subs (jLn, acos(rd11/2 + rd22/2 + rd33/2 - 1/2), theta);
% jLn= subs (jLn, (rd11/2 + rd22/2 + rd33/2 - 1/2), costh)
%  %isequaln(jLn(1,1),JLn(1,1)) %too complex expresion to be handdle 

 