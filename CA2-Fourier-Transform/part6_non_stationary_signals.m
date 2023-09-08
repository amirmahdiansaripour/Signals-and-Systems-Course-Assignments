%% Part A: Amplitude non-stationary
fs = 1000;
t = [0:1/fs:10];
signal1 = 5*sin(2*pi*3*t);
signal2 = sin(2*pi*3*t).*t;
subplot(2,1,1);
plot(t, signal1, 'Color', 'red');
hold on;
plot(t, signal2, 'Color', 'blue');
ylim([-10 10]);
legend({'stationary', 'non-stationary'}, 'Location', 'northwest');
title('Time domain signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
Fy1 = fft(signal1);
f1 = linspace(-fs/2, fs/2, numel(signal1));
Fy_shifted_1 = fftshift(Fy1);
g1 = stem(f1, 2*abs(Fy_shifted_1)/(length(f1)), 'o','linewidth', 1.5, 'Color', 'red');
g1.MarkerFaceColor = 'red';
xlim([1 7]);
ylim([0 6]);
hold on;
Fy2 = fft(signal2);
f2 = linspace(-fs/2, fs/2, numel(signal2));
Fy_shifted_2 = fftshift(Fy2);
g2 = stem(f2, 2*abs(Fy_shifted_2)/(length(f1)), 'square', 'linewidth', 1.5, 'Color', 'blue');
title('Frequency domain');
xlabel('Frequecny (Hz)');
ylabel('Amplitude');
legend({'stationary', 'non-stationary'}, 'Location', 'northwest');

%% Part B: Frequency non-stationary
fs = 1000;
t = [0:1/fs:5];
freq = linspace(10,15,length(t));
phase = cumsum(freq/fs);
signal3 = sin(4.5*pi*phase);
subplot(2,1,1);
plot(t, signal3, 'k-', 'linewidth', 1.5);
ylim([-2 2]);
title('Time domain signal');
xlabel('Time (s)');
ylabel('Amplitude');

Fy3 = fft(signal3);
f3 = linspace(-fs/2, fs/2, numel(signal3));
Fy_shifted_3 = fftshift(Fy3);
subplot(2,1,2);
g3 = plot(f3, 2*abs(Fy_shifted_3)/(length(f3)), 'k-', 'linewidth', 1.5);
title('Frequency domain');
xlabel('Frequecny (Hz)');
ylabel('Amplitude');
xlim([0 80]);
%% Part C: Sharp transition
t = [0:1/fs:10];
signal4 = 10*sin(2*pi*3*t).*(heaviside(t) - heaviside(t - 2.5)) + ...
    2*sin(2*pi*1*t).*(heaviside(t - 2.5) - heaviside(t - 5)) + ...
    5*sin(2*pi*6*t).*(heaviside(t - 5) - heaviside(t - 7.5)) +  ...
    8*sin(2*pi*10*t).*(heaviside(t - 7.5));
subplot(2, 1, 1);
plot(t, signal4, 'k-', 'linewidth', 1.5);
title('Time domain signal');
xlabel('Time (s)');
ylabel('Amplitude');

Fy4 = fft(signal4);
f4 = linspace(-fs/2, fs/2, numel(signal4));
Fy_shifted_4 = fftshift(Fy4);
subplot(2,1,2);
g3 = stem(f4, 2*abs(Fy_shifted_4)/(length(f4)), 'square', 'Color', 'black');
g3.MarkerFaceColor = 'blue';
xlim([0 20]);
ylim([0 2.5]);
title('Frequency domain signal');
xlabel('Frequency (Hz)');
ylabel('Amplitude');

%% Part D: Phase reversal
t = [0:1/fs:4];
signal5 = sin(2*pi*10*t) .* (heaviside(t) - heaviside(t - 2)) - sin(2*pi*10*t) .* heaviside(t - 2);
subplot(2, 1, 1);
plot(t, signal5);
title('Time domain signal');
xlabel('Time (s)');
ylabel('Amplitude');

Fy5 = fft(signal5);
f5 = linspace(-fs/2, fs/2, numel(signal5));
Fy_shifted_5 = fftshift(Fy5);
subplot(2,1,2);
g5 = stem(f5, 2*abs(Fy_shifted_5)/(length(f5)), 'square', 'Color', 'black');
g5.MarkerFaceColor = 'blue';
xlim([0 20]);
title('Frequency domain signal');
xlabel('Frequecy (Hz)');
ylabel('Amplitude');

%% Part E: Adding edge
fs = 1000;
t = [0:1/fs:2];
signal6 = heaviside(t - 1) + 0.1*sin(6*pi*t);
subplot(2,1,1);
plot(t, signal6, 'k-', 'linewidth', 1.5);
xlim([0 2]);
ylim([-1 2]);
title('Time domain signal');
xlabel('Time (s)');
ylabel('Amplitude');

Fy6 = fft(signal6);
f6 = linspace(-fs/2, fs/2, numel(signal6));
Fy_shifted_6 = fftshift(Fy6);
subplot(2,1,2);
g6 = stem(f6, 2*abs(Fy_shifted_6)/(length(f6)), 'square', 'Color', 'black');
g6.MarkerFaceColor = 'blue';
xlim([0 20]);
ylim([0 0.2]);
title('Frequency domain signal');
xlabel('Frequecy (Hz)');
ylabel('Amplitude');

