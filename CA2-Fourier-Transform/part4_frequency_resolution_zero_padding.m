%% Part A: analyzing the effect of zero-padding (npts)
fs = 10;
t = [-2:(1/fs):2];
signal1 = (sin(0.5*pi*t)).^2;
subplot(2,2,1);
p = plot(t, signal1, 'ksquare-');
p.MarkerFaceColor = 'blue';
p.MarkerSize = 10;
xlim([-5 5]);
title('Time domain');
xlabel('Time (a.u.)');
ylabel('Amplitude');
Fy1 = fft(signal1);
f1 = linspace(-fs/2, fs/2, numel(signal1));
Fy_shifted = fftshift(Fy1);
subplot(2,2,3);
h = plot(f1, abs(Fy_shifted)/(2*fs), 'ksquare-');
h.MarkerFaceColor = 'green';
h.MarkerSize = 10;
xlim([0 10]);
title('Frequency domain');
xlabel('Frequency (a.u.)');
ylabel('Amplitude');

t2 = [-2:(1/fs):6];
subplot(2,2,2);
signal2 = (sin(0.5*pi*t2)).^2;
for ind = [42:length(signal2)]
    signal2(ind) = 0;
end
g = plot(t2, signal2, 'ksquare-');
g.MarkerFaceColor = 'blue';
g.MarkerSize = 10;
title('Time domain, zero-padded');
xlabel('Time (a.u.)');
ylabel('Amplitude');

Fy2 = fft(signal2);
f2 = linspace(-fs/2, fs/2, numel(signal2));
Fy_shifted = fftshift(Fy2);
subplot(2,2,4);
h = plot(f2, abs(Fy_shifted)/(2*length(signal2)), 'ksquare-');
h.MarkerFaceColor = 'green';
h.MarkerSize = 10;
xlim([0 10]);
title('Frequency domain, zero-padded');
xlabel('Frequency (a.u.)');
ylabel('Amplitude');

%% Part B: analyzing the effect of changing sr and npts.
clear;
fs = [100, 100, 50];
t1 = [-1:1/fs(1):1];
t2 = [-1:1/fs(2):3];
t3 = [-1:1/fs(3):1];
signal1 = cos(10*pi.*t1).* exp(-1*0.5*(t1.^2));
signal2 = cos(10*pi*t2).* exp(-1*0.5*(t2.^2));
signal3 = cos(10*pi*t3).* exp(-1*0.5*(t3.^2));

subplot(2,1,1);
h1 = plot(t3, signal3, 'o', 'LineStyle', 'none', 'MarkerFaceColor', 'green', 'MarkerSize', 10);
h1.MarkerEdgeColor = 'green';
hold on;
h2 = plot(t1, signal1, 'pentagram', 'LineStyle', 'none', 'MarkerFaceColor', [0.5 0 0.8], 'MarkerSize', 10);
h2.MarkerEdgeColor = [0.5 0 0.8]; 
hold on;
plot(t2, signal2, 'linewidth', 1.5, 'Color', 'red');
xlim([-1 3]);
legend({'sr = 50, npts = 2sr', 'sr = 100, npts = 2sr', 'sr = 100, npts = 11sr'});
title('Time domain');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);

Fy3 = fft(signal3);
f3 = linspace(-fs(3)/2, fs(3)/2, numel(signal3));
Fy_shifted_3 = fftshift(Fy3);
g3 = plot(f3, abs(Fy_shifted_3)/(fs(3)), 'o', 'LineStyle', 'none', 'MarkerFaceColor', 'green', 'MarkerSize', 10);
g3.MarkerEdgeColor = 'green';
hold on;

Fy1 = fft(signal1);
f1 = linspace(-fs(1)/2, fs(1)/2, numel(signal1));
Fy_shifted_1 = fftshift(Fy1);
g1 = plot(f1, abs(Fy_shifted_1)/(fs(1)), 'pentagram', 'LineStyle', 'none', 'MarkerFaceColor', [0.5 0 0.8], 'MarkerSize', 10);
g1.MarkerEdgeColor = [0.5 0 0.8];
hold on;

Fy2 = fft(signal2);
f2 = linspace(-fs(2)/2, fs(2)/2, numel(signal2));
Fy_shifted_2 = fftshift(Fy2);
g2 = plot(f2, abs(Fy_shifted_2)/(fs(2)), 'linewidth', 1.5, 'Color', 'red');
xlim([0 50]);
legend({'sr = 50, npts = 2sr', 'sr = 100, npts = 2sr', 'sr = 100, npts = 11sr'});
title('Frequency domain');
xlabel('Frequency (Hz)');
ylabel('Amplitude');




