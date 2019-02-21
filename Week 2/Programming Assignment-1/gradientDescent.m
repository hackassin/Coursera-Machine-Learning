function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
    %       of the cost function (computeCost) and gradient here.
    %
predictions = X * theta;
%printf("predictions\n");
%disp(predictions);
%error = (predictions - y).*(X(:,2));
error = (predictions - y);
%errorRes = error.*(X(:,2));
%printf("error\n");
%disp(error);
temp1 = theta(1) - (alpha/m) * sum(error.*(X(:,1)));
temp2 = theta(2) - (alpha/m) * sum(error.*(X(:,2)));
%printf("delta\n");
%disp(delta);
%theta = theta - (delta*alpha);
%Note: Using the above commented equation leads
%to incorrect update; Check notes for simultaneous update
%printf("theta is: ");
%disp(theta);
theta = [temp1;temp2];
    % ============================================================

    % Save the cost J in every iteration  
    J_history(iter) = computeCost(X, y, theta);
	printf("Compute Cost: J_history(iter%d) = %f\n", iter,J_history(iter));
end
predict3 = [1, 6] * theta;
fprintf('For population = 60,000, we predict a profit of %f\n',...
    predict3*10000);
predict4 = [1, 8] * theta;
fprintf('For population = 80,000, we predict a profit of %f\n',...
    predict4*10000);	
end
