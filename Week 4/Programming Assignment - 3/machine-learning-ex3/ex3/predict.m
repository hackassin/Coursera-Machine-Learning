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
a1 = [ones(m,1) X]; %Adding bias-unit to a1

% Step-1: Computing the 2nd activation layer
z2 = a1 * Theta1';
a2 = sigmoid(z2);

% Step-2: Computing the 3rd activation layer
a2 = [ones(m,1) a2]; %Adding bias-unit to a2
z3 = a2 * Theta2';
a3 = sigmoid(z3); %This computes the final hypothesis

% Step-4: Finding the max prediction and determining its index, to compute...
% the probability at class k, where k =[0:9], represents the digits
[predict index] = max(a3'); % size(a3) = 1 x 5000
p = index';
% =========================================================================
end
