function plot_sampled_fourier(sr, tit, index)
    time_step = 1/sr;
    t2 = [0:time_step:1];
    signal2 = sin(2*pi*10*t2);
    Fy = fft(signal2); 
    freq = linspace((-sr/2), (sr/2), numel(signal2));
    Fy_shifted = fftshift(Fy);
    subplot(2,2,index);
    p = plot(freq, abs(Fy_shifted)*time_step*2, 'ko-');
    ylim([0 1.5]);
    xlim([0 50]);
    title(['Sampled at ' tit ' times']);
    p.MarkerFaceColor = [1 0.5 0];
    p.MarkerSize = 8;
    p.MarkerEdgeColor = [0 0 1];
end