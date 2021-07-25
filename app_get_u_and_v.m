% Wenn P, C, R und K gegeben ist
% Ziel: u und v berechnen
% benutze getUandV-Funktion
clear;
P = [8;-1;1];    % TODO
C = [4;2;3];   % TODO
R = eye(3);     % kann in der Prüfung anders sein
K = [           % TODO
    640 0 320;
    0 480 240;
    0 0 1;
];

[u, v] = getUandV(P, K, C, R);

fprintf('u =\t%d\n', u);
fprintf('v =\t%d\n', v);

% if the cam is nearly perfect
% what is the size?
%fprintf('width=\t%d\n', v*2);
%fprintf('height=\t%d\n', u*2);
