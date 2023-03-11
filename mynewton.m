function [counter, new_value] = mynewton(varargin)
    format long
    % first input varaible is the function file
    F = varargin{1};

    % if there are 4 input values, it means there is an accurately computed
    % jacobian function file
    if nargin == 4

        % last input value is always the 0 - the counter that counts how
        % often the method is called until the tolerance is reached
        counter = varargin{4}+1;

        % third input value is the starting point for the newton method
        starting_point = varargin{3};

        % second input value is the Jacobian matrix
        J = varargin{2};

        % the new starting point is calculated (or the final approximation 
        % - depending on the tolerance)
        new_value = starting_point - J(starting_point)\F(starting_point);

        % if the difference between the two points is greater than the 
        % tolerance (10^(-8)), the Newton method is called again with the 
        % new starting point

        if sum(abs(new_value-starting_point)) > 10^(-8)
            [counter, new_value] = mynewton(F, J, new_value, counter);
        end

    % if the function takes only 3 input values, it means that there is no 
    % exact Jacobian matrix and it has to be calculated numerically
    elseif nargin == 3
        counter = varargin{3}+1;
        starting_point = varargin{2};

        % here the Jacobian matrix gets calculated with the starting point 
        % as input value
        J = jacobi(F, starting_point);

        % calculating the new startingpoint again
        new_value = starting_point - J\F(starting_point);

        if sum(abs(new_value-starting_point)) > 10^(-8)
            [counter, new_value] = mynewton(F, new_value, counter);
        end
    % if there are more than 4 or less than 3 input arguments it prints an
    % error message
    else
        disp("Error")
    end   
end