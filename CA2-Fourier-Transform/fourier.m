
function fourier(t, signal, coeff)
%It is asked to obtain the fourier coefficients
% for the following two functions:
%sin(((10*pi).*t)) .* exp(-t.^2)
%1.5 + (2.5 * sin(8*pi*t))
    fs = 100;
    normalized_time = [0:200]./201;
    f = linspace(-fs/2, fs/2, numel(signal));

    fourier_transform = zeros(size(f));
    ind = 1;
    for fi = f
        exponential = exp(-1*i*2*pi*fi*t);
        f_value = signal*exponential';
        if fi == 0
            if f_value > 0.00001
                f_value = f_value/2;
            end
        end
        fourier_transform(ind) = abs(f_value)/(coeff*fs);
        ind = ind + 1;
    end    
    plot(f, fourier_transform);
    xlim([0 fs/2]);
    title('Forier transform of ref signal');
    xlabel('Frequency (Hz)');
    ylabel('X(f)');
end
