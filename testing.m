% option 1:
% inputs: function, starting point, counter (always 0)
[counter, x0] = mynewton(@rosenbrock, [2;-2;5], 0);

% option 2 (only if you have the exactly jacobian matrix as a file):
% inputs: function, Jacobian matrix, starting point, counter (always 0)
% [counter, x0] = mynewton(@rosenbrock, @jacobi, [0;3], 0);


disp("the approximate zero: ")
disp(x0)

disp(counter + " runs needed for a tolerance of 10^(-8)")