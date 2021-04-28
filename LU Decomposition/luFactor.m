function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix

%Make sure that LU Decomposition is possible for the matrix
[row col] = size(A);
if row ~= col
    error('Matrix dimensions are not valid');
end
%Start with blank U and L to create the matrices 
U = zeros(row, col);
L = zeros(row, col);
P = zeros(row, col);

%Find U

%Find L
for i=1:row
    L(i,i) = 1
end

%Pivot
a = A(:,1);
b = A(:,2);
c = A(:,3);
P = eye(row);
%for i = 1:row
    %if a(:,i) < max(a(:,i))
        %A(1,i) = max(a(:,i))
        
        
    %end
    
%end


%Decomposition
f21= A(2,1)/A(1,1);
f31= A(3,1)/A(1,1);
R1= A(1,:)
R2= A(2,:)
R3= A(3,:)

m_R2 = R2 - (R1 * f21)
m_R3 = R3 - (R1 * f31)

A = [R1;m_R2;m_R3]
f32 = A(3,2)/A(2,2)
m2_R3 = m_R3 - (m_R2 * f32);

A = [R1;m_R2;m2_R3]
U = A;
%L
L(2,1) = f21;
L(3,1) = f31;
L(3,2) = f32;
A = L*U

end