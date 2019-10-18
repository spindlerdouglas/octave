function J = costFunctionJ(X, y, theta)
  % X is the "design matrix" containing the training examples
  % y is the class labels
  
  m = size(X,1);                    % number of training examples (rows)
  predictions = X*theta;            % predictions of hypothesis on all m training examples
  sqrErrors = (predictions-y).^2;   
  
  J = 1/(2*m) * sum(sqrErrors); 
endfunction
