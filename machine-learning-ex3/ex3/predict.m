function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

X = [ones(size(X,1), 1) X];

for i = 1:m
    hidden_nodes = zeros(size(Theta1,1),1);
    %for j = 1:size(Theta2,2)
    %    hidden_nodes(j) = sigmoid(Theta1(j,:) * X(i,:)')
    %endfor
    hidden_nodes = sigmoid(Theta1 * X(i,:)');
    hidden_nodes = [1; hidden_nodes];
    hidden_nodes_output = zeros(size(Theta2,1),1);
    
    hidden_nodes;
    hidden_nodes_output = sigmoid(Theta2 * hidden_nodes);
    [max_val, p(i)] = max(hidden_nodes_output);
    
endfor









% =========================================================================


end
