function J = costFunction(X, y, theta)

% X is the design-matrix cosnisting of the training examples
% y is the matrix consisting of the actual values
% theta is the constant variable used in hypothesis function

m = size(X,1);
disp("No. of training examples");
disp(m);
predictions = X * theta; %hypothesis function
disp("Predictions");
disp(predictions);
sqrErrors = (predictions-y).^2; %squared errors
disp("Squared Errors");
disp(sqrErrors);
J = 1/(2*m) * sum(sqrErrors);