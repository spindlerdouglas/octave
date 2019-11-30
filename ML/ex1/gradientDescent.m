function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);
    % theta_vals = zeros(num_iters, 2);
    
    for iter = 1:num_iters

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta. 
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCost) and gradient here.
        %


        % ============================================================
        % this will result in a 97x1 matrix
        hypothesis = (X * theta) - y;
        % here we use X' times the hypothesis to achieve the same result as the SUM of all hypotheses for each THETA
        theta = theta - alpha * (1 / m) * (X' * hypothesis);

        % Save the cost J in every iteration    
        J_history(iter) = computeCost(X, y, theta);
        fprintf('current value of theta: %f\n', theta);

    end
    hold on;
    plot(J_history);
    hold off;

    % plot surface to display J for each combination of theta
    % Fill out J_vals
    % theta0_vals = theta_vals(:,1);
    % theta1_vals = theta_vals(:,2);
    % J_vals = zeros(length(theta0_vals), length(theta1_vals));
    % for i = 1:length(theta0_vals)
    %     for j = 1:length(theta1_vals)
    %     t = [theta0_vals(i); theta1_vals(j)];
    %     J_vals(i,j) = computeCost(X, y, t);
    %     end
    % end

    % % Because of the way meshgrids work in the surf command, we need to
    % % transpose J_vals before calling surf, or else the axes will be flipped
    % J_vals = J_vals';
    % % Surface plot
    % figure;
    % surf(theta0_vals, theta1_vals, J_vals)
    % xlabel('\theta_0'); ylabel('\theta_1');

end
