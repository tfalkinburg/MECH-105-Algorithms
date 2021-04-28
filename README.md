# MECH-105-Algorithms
### These are the algorithms that I created for MECH 105 utilizing different numerical methods:

## **Algorithms:**
### 1. False Position
This algorithm uses the False Position method for finding the root of an equation. The inputs of this algorithm are the function that you are evaluating, the lower X bound, and the upper X bound. There are also two optional inputs which are the stopping error, and maximum number of iterations. If you do not input a stopping error or maximum iteration, then the error is set to .01% and the maximum number of iterations is 200. 

*[root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)*

### 2. LU Decomposition
This algorithm does LU Decomposition of a matrix using pivoting. It takes an input matrix A and decomposes it into an upper and a lower matrix.

*[L, U, P] = luFactor(A)*

### 3. Simpson's 1/3 Rule
This algorithm uses the Simpson's 1/3 Rule to numerically evaluate an integral. It takes an input vector containing X values, and another vector containing Y values.

*[I] = Simpson(x, y)*
