%% Part A: signal = sin(((10*pi).*t)) .* exp(-t.^2);
t = [-1:0.01:1];
signal = sin(((10*pi).*t)) .* exp(-t.^2);
coeff_third = 1;
fourier(t, signal, coeff_third/2);
%% Part B: signal = 1.5 + (2.5 * sin(8*pi*t));
signal = 1.5 + (2.5 * sin(8*pi*t));
coeff_third = 2; %% Since X(f = 0) exists and is reapeted when mirroring
fourier(t, signal, coeff_third/2);
