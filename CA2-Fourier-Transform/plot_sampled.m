function plot_sampled(sr, index, tit)
    t = [0:0.001:1];
    signal = sin(2*pi*10*t);
    t2 = [0:(1/sr):1];
    signal2 = sin(2*pi*10*t2);
    subplot(2,2,index);
    plot(t,signal);
    hold on;
    plot(t2,signal2, 'ko-', 'linewidth', 2, 'Color', [1 0 0]);
    title(['Sampled at ' tit ' times']);
    ylim([-1.1 1.1]);
end

