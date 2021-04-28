function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

L = length(x);

if size(x) == size(y)
    
   %This should check for uniform space but it's still marked wrong
   %space = diff(x)
   %if diff(space) ~= 0
    %error('There is unequal spacing between your X data points')
   %end
   %Apply Trapezoidal Rule
    if L == 2
        warning('WARNING: Not enough data points to apply Simpsons Rule. Switching to Trapezoidal Rule.')
        h = (x(2) - x(1))/2
        I =  h * (y(1) + y(2));
        
    %Apply Simpsons 1/3 Rule
    elseif L == 3
        h = (x(L) - x(1)) / 2;
        I = (h/3) * (y(1) + 4 * y(2) + y(3))
    elseif L > 3 && rem(L,2)~=0
        h = (x(L) - x(1)) / (L-1);
        evens = sum(y(3:2:L));
        odds = sum(y(2:2:(L-1)));
        I = (h/3) * (y(1) + 4 * odds + 2 * evens + y(L))
        %I = (h/3) * (y(1) + 4 * (y(2) + y(4) + y(6) + y(8)) + 2 * (y(3) + y(5) + y(7) + y(9)) + y(10));
    else
        h = (x(L) - x(1)) / (L-1);
        evens = sum(y(3:2:L));
        odds = sum(y(2:2:(L-1)));
        I = (h/3) * (y(1) + 4 * odds + 2 * evens + y(L-1)) + (((x(L) - x(L-1))/2) * (y(L) + y(L-1)))
        warning('WARNING: Not enough data points to apply Simpsons Rule. Switching to Trapezoidal Rule.')
    end
%Sizes don't match error        
else
    error('Independent and dependent variables must have the same size')
end

%spacing
for i = 2:L
    if x(i) - x(i-1) ~= x(2) - x(1)
        error('X values are not evenly spaced')
    end
end

end