function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;
m = length(X);
X_pass = zeros(1,2);
X_fail = zeros(1,2);

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

for i = 1:m
  if y(i) == 1
    X_pass = [X_pass;X(i,:)];
  else
    X_fail = [X_fail;X(i,:)];
   end
 end
 X_pass = X_pass(2:length(X_pass),:);
 X_fail = X_fail(2:length(X_fail),:);
 plot(X_pass(:,1),X_pass(:,2),'k+');
 plot(X_fail(:,1),X_fail(:,2),'ko','MarkerFaceColor','y');






% =========================================================================



hold off;

end
