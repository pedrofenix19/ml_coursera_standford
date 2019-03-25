function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


[m n_plus1] = size(X);

h = sigmoid(X * theta);
h_min_y = h - y;
sum_cost = 0;
sum_reg = 0;
for i = 1:m
  sum_cost += (-y(i)) * log(h(i)) - (1 - y(i)) * log(1 - h(i));
endfor

for i = 1:length(theta)
  sum_grad = 0;
  for g = 1:m
    sum_grad += h_min_y(g) * X(g,i);
  endfor
  grad(i) = (1 / m) * sum_grad;
  if (i > 1)
    grad(i) += (lambda / m) * theta(i);
    sum_reg += theta(i) ^ 2;
  endif
endfor

J = sum_cost / m + (lambda / (2*m)) * sum_reg;



% =============================================================

end
