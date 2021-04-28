# This algorithm uses the False Position method for finding the root of an equation. The inputs of this algorithm are the function that you are evaluating, the lower X bound, and the upper X bound. There are also two optional inputs which are the stopping error, and maximum number of iterations. If you do not input a stopping error or maximum iteration, then the error is set to .01% and the maximum number of iterations is 200.
## Finding the root using False Position
### Inputs: 
    func = function that you are evaluating
    xl = lower x bound
    xu = upper x bound
    es = stopping error
    maxit = maximum # of iterations
### Outputs:
    root = the root of the function between the lower and upper bounds
    fx = the function evaluated at the root
    ea = the approximate relative error
    iter = number of iterations
 
# [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
