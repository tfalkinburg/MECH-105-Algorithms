function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

%Error checking for # of arguments
if nargin < 3, error('at least 3 input arguments required'), end
if nargin < 4, es= 0.0001 ,maxit= 200; , end
if nargin < 5, maxit= 200; , end

%Calculate f(xu) and f(xl)
f_lower= func(xl);
f_upper= func(xu);

%Check if there is a sign change between the bounds
check = f_lower * f_upper;
if check > 0, error('There is no root between these bounds. Please change the upper and lower bounds'), end

%Set up variables
iter = 0;
ea = 100;
xr = xl;

while(1)
f_lower= func(xl);
f_upper= func(xu);
iter = iter + 1;
old_xr= xr;
    
%Calculate root
xr = xu - ((f_upper * (xl - xu)) / (f_lower - f_upper))
ea = abs((xr - old_xr)/xr) * 100;
f_xr = func(xr);

check = f_xr * f_lower;

%Check where root is
if check > 0
    xl = xr
elseif check < 0
    xu = xr
else
    ea = 0;
end

%End the loop
if ea <= es || iter == maxit
    break
end

end


%final variables
root = xr;
fx = func(xr);


end