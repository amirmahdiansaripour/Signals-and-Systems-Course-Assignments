%% Part A: displaying plots with theta = pi/2;
t = [-1:0.001:1];
theta = pi/2;
subplot(2,2,1);
reference_signal = sin(((10*pi).*t) + theta) .* exp(-t.^2);
plot(t, reference_signal, 'k-', 'linewidth', 3);
xlabel('Time(second)');
ylabel('Amplitude')
title('Reference signal');

frequency = [2:0.5:10];
dotprod1 = zeros(size(frequency));
dotprod2 = zeros(size(frequency));
ind = 1;
for f = frequency
    signal1 = sin(2*pi*f.*t);
    signal2 = exp(i*2*pi*f.*t);
    dotprod1(ind) = (signal1*reference_signal') ./ (norm(signal1) * norm(reference_signal));
    complex = (signal2*reference_signal') ./ (norm(signal2) * norm(reference_signal));
    dotprod2(ind) = abs(complex);
    ind = ind + 1;
end
subplot(2,2,2);
stem(frequency, dotprod1, 'ko', 'markersize', 10, 'linewidth', 2);
title(['Dot product of signal and sine waves: (offset:  ' num2str(theta) ')']);
ax = gca;
ax.TitleFontSizeMultiplier = 1;
xlabel('Frequncy (Hz)');
ylabel('Dot product');
set(gca, 'xlim', [1.5 10.5]);
set(gca, 'ylim', [-0.1 1]);
subplot(2,2,3);
plot(t, reference_signal, 'k-', 'linewidth', 3);
xlabel('Time(second)');
ylabel('Amplitude')
title('Reference signal');

subplot(2,2,4);
stem(frequency, dotprod2, 'ko', 'markersize', 10, 'linewidth', 2);
title(['Dot product of signal and complex sine waves: (offset:  ' num2str(theta) ')']);
ax = gca;
ax.TitleFontSizeMultiplier = 1;
xlabel('Frequncy (Hz)');
ylabel('Dot product');
set(gca, 'xlim', [1.5 10.5]);
set(gca, 'ylim', [-0.1 1]);

%% Part B: displaying plots with theta = pi/4;
theta = pi/4;
subplot(2,2,1);
reference_signal = sin(((10*pi).*t) + theta) .* exp(-t.^2);
plot(t, reference_signal, 'k-', 'linewidth', 3);
xlabel('Time(second)');
ylabel('Amplitude')
title('Reference signal');
frequency = [2:0.5:10];
dotprod1 = zeros(size(frequency));
dotprod2 = zeros(size(frequency));
ind = 1;
for f = frequency
    signal1 = sin(2*pi*f.*t);
    signal2 = exp(i*2*pi*f.*t);
    dotprod1(ind) = (signal1*reference_signal') ./ (norm(signal1) * norm(reference_signal));
    complex = (signal2*reference_signal') ./ (norm(signal2) * norm(reference_signal));
    dotprod2(ind) = abs(complex);
    ind = ind + 1;
end
subplot(2,2,2);
stem(frequency, dotprod1, 'ko', 'markersize', 10, 'linewidth', 2);
title(['Dot product of signal and sine waves: (offset:  ' num2str(theta) ')']);
ax = gca;
ax.TitleFontSizeMultiplier = 1;
xlabel('Frequncy (Hz)');
ylabel('Dot product');
set(gca, 'xlim', [1.5 10.5]);
set(gca, 'ylim', [-0.1 1]);
subplot(2,2,3);
plot(t, reference_signal, 'k-', 'linewidth', 3);
xlabel('Time(second)');
ylabel('Amplitude')
title('Reference signal');

    subplot(2,2,4);
    stem(frequency, dotprod2, 'ko', 'markersize', 10, 'linewidth', 2);
    title(['Dot product of signal and complex sine waves: (offset:  ' num2str(theta) ')']);
    ax = gca;
    ax.TitleFontSizeMultiplier = 1;
    xlabel('Frequncy (Hz)');
    ylabel('Dot product');
    set(gca, 'xlim', [1.5 10.5]);
    set(gca, 'ylim', [-0.1 1]);


