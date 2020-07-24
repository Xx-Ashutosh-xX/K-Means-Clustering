function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.

[m n] = size(X);
centroids = zeros(K, n);

% for-loop over the centroids

for k=1:K 
   centroids(k, :) = mean(X(idx==k, :));
endfor

endfunction

