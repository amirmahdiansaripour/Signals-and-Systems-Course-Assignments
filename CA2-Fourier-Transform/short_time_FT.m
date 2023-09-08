%% Part A: STFT of a frequency non-stationary signal 
fs = 1000;
t = [0:1/fs:5];
freq = linspace(10,15,length(t));
phase = cumsum(freq/fs);
signal1 = sin(4.5*pi*phase);
each_segment = floor(length(signal1)/(0.01*fs));
overlap = floor(each_segment/4);
window = rectwin(each_segment);
[forier, time, frequency] = spectrogram(signal1, window, overlap, each_segment, fs, 'centered');
subplot(2, 1, 1);
contourf(frequency, time, abs(forier));
xlim([0 5]);
ylim([0 100]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Frequency non-stationary signal STFT with simple window');
colorbar;
window2 = hann(each_segment, 'periodic');
[forier2, time2, frequency2] = spectrogram(signal1, window2, overlap, each_segment, fs, 'centered');
subplot(2, 1, 2);
contourf(frequency2, time2, abs(forier2));
xlim([0 5]);
ylim([0 100]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Frequency non-stationary signal STFT with Hann Window');
colorbar;

%% Part B: STFT of a sharp-transited signal
t = [0:1/fs:10];
signal2 = 10*sin(2*pi*3*t).*(heaviside(t) - heaviside(t - 2.5)) + ...
    2*sin(2*pi*1*t).*(heaviside(t - 2.5) - heaviside(t - 5)) +  ...
    5*sin(2*pi*6*t).*(heaviside(t - 5) - heaviside(t - 7.5)) +  ...
    8*sin(2*pi*10*t).*(heaviside(t - 7.5));
each_segment = 600;
overlap = floor(each_segment/4);
window = rectwin(each_segment);
[forier, time, frequency] = spectrogram(signal2, window, overlap, each_segment, fs, 'centered');
subplot(2, 1, 1);
contourf(frequency, time, abs(forier));
xlim([0 10]);
ylim([0 20]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Sharp-transited signal STFT with simple window');
colorbar;
window2 = hann(each_segment, 'periodic');
[forier2, time2, frequency2] = spectrogram(signal2, window2, overlap, each_segment, fs, 'centered');
subplot(2, 1, 2);
contourf(frequency2, time2, abs(forier2));
xlim([0 10]);
ylim([0 20]);
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Sharp-transited signal STFT with Hann Window');
colorbar;
%% Part C: Welch's method with rectangular window
t = [0:1/fs:4];
signal3 = sin(2*pi*10*t) .* (heaviside(t) - heaviside(t - 2)) - sin(2*pi*10*t) .* heaviside(t - 2);
each_segment = floor(length(signal3)/100);
window3 = rectwin(each_segment);
noverlap = 0;
pwelch(signal3, window3, noverlap);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Phase reversed stft with rect Window and Welch Method');
%% Part D: Welch's method with Hann Window
window3 = hann(each_segment);
noverlap = 0;
pwelch(signal3, window3, noverlap);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Phase reversed stft with Hann Window and Welch Method');
