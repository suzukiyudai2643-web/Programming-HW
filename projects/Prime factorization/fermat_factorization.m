function [c2, c3] = fermat_factorization(n)
% fermat_factor - Fermat factorization for positive integer n
%   [c2, c3] = fermat_factor(n) returns two nontrivial factors c2 and c3
%   such that n = c2 * c3, if possible using Fermat's method.
%   If no nontrivial factors are found (e.g., n is prime), returns [] for both.

% Input validation
if nargin < 1
    error('fermat_factor:input', 'Input n is required.');
end
if ~isscalar(n) || n ~= fix(n) || n <= 0
    error('fermat_factor:input', 'n must be a positive integer scalar.');
end

c2 = [];
c3 = [];

% Trivial cases
if n <= 3
    return;
end

% If n is even, factor immediately
if mod(n, 2) == 0
    c2 = 2;
    c3 = n / 2;
    return;
end

% If n is prime, Fermat's method won't find nontrivial factors
if isprime(n)
    return;
end

% Fermat search: find a^2 - n = b^2
a = ceil(sqrt(n));

% Optional safeguard: you can uncomment and adjust the maxIter if desired
% maxIter = 1e6;  % e.g., max iterations to attempt
% for k = 1:maxIter
while true
    b2 = a*a - n;
    b = floor(sqrt(b2));
    if b*b == b2
        c2 = a - b;
        c3 = a + b;
        return;
    end
    a = a + 1;
    % if you want to implement a hard cap:
    % if a > sqrt(n) + maxIter
    %     return;
    % end
end
end