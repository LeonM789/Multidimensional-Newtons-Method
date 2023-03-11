function [J] = jacobi(F, s)
    
    % setting value for h
    h = 10^(-5);

    % saving the length of the starting value
    % now we know what dimensions the Jacobian matrix has to have
    % -> 3 variables -> 3 equations -> 3x3 Jacobian matrix
    len = length(s);

    % inserting the vector into the passed function
    Fs = F(s);

    % creating a 0-matrix of the right size 
    % (replacing values is more efficiant than appending values)
    J = zeros(len, len);

    % going through every position of the matrix
    for i = 1:len
        for u = 1:len
            % vector that contains the h value added on the right position
            v = zeros(len, 1);
            v(u,1) = h;

            % calculating the function with the (input vector)+h
            Fsh = F(s+v);

            % storing the numerical approximation of the derivative in the 
            % matrix
            J(i,u) = (Fsh(i) - Fs(i))/h;
        end
    end
end 