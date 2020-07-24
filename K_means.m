%% Initialization
clear ; close all; clc

%% ================= Part 1: Find Closest Centroids ====================

fprintf('Finding closest centroids.\n\n');

% Loading the Dataset
load('Data.mat');

% Select an initial set of centroids
K = 3; % 3 Centroids
initial_centroids = [3 3; 6 2; 8 5];

% Find the closest centroids for the examples using the initial_centroids
idx = findClosestCentroids(X, initial_centroids);

fprintf('Closest centroids for the first 3 examples: \n')
fprintf(' %d', idx(1:3));
fprintf('\nProgram paused. Press enter to continue.\n');
pause;

%% ===================== Part 2: Compute Means =========================

fprintf('\nComputing centroids means.\n\n');

%  Compute means based on the closest centroids found in the previous part.
centroids = computeCentroids(X, idx, K);

fprintf('Centroids computed after initial finding of closest centroids: \n')
fprintf(' %f %f \n' , centroids');
fprintf('Program paused. Press enter to continue.\n');
pause;


%% =================== Part 3: K-Means Clustering ======================

fprintf('\nRunning K-Means clustering on example dataset.\n\n');

% Load an example dataset
load('Data.mat');

% Settings for running K-Means
K = 3;
max_iters = 10;

% For consistency, here I have set centroids to specific values
% but in practice you want to generate them automatically, such as by
% settings them to be random examples from the Dataset.
initial_centroids = [3 3; 6 2; 8 5];

% Run K-Means algorithm. The 'true' at the end tells our function to plot
% the progress of K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters, true);
fprintf('\nK-Means Done.\n\n');
