%% Part A: displaying discrete-sampled signals with different SRs.
plot_sampled(15, 1, '1.5');
plot_sampled(20, 2, '2');
plot_sampled(50, 3, '5');
plot_sampled(100, 4, '10');
suptitle('Time Domain');

%% Part B: displaying fourier transforms of the signals above.
plot_sampled_fourier(15, '1.5', 1);
plot_sampled_fourier(20, '2', 2);
plot_sampled_fourier(50, '5', 3);
plot_sampled_fourier(100, '10', 4);
suptitle('Frequency Domain');
