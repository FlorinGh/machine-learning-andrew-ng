function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

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

% X size is (m x 401), examples in rows
% Theta1 size is (25 x 401), parameters in rows
% Theta2 size is (10 x 26), parameters in rows

for i = 1:m
	z2 = zeros(25,1);
	z2 = sigmoid(Theta1 * X(i,:)');
	z2 = [1; z2];

	z3 = zeros(10,1);
	z3 = sigmoid(Theta2 * z2);

	[x, res] = max(z3);
	p(i) = res;
end

% =========================================================================

end
