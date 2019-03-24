function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    h = X * theta;
    [m n_plus1] = size(X);
    h(:,2) = -y;
    theta_aux = zeros(n_plus1,1);
    for index_theta = 1:n_plus1
      h_sum_prod = sum(sum(h,2) .* X(index_theta));
      theta_aux(index_theta) = theta(index_theta) - alpha * (1/m) * h_sum_prod;
    endfor

    theta = theta_aux;







    % ============================================================

    % Save the cost J in every iteration    
    %jaux = computeCostMulti(X, y, theta)
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
