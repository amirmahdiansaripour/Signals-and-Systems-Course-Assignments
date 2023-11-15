# Signals-and-Systems-Course-Assignments
The analysis of Discrete Fourier Transform, Nyquist Frequency and Aliasing, Non-stationary signals (Matlab and Mathematica)

### Definition of Delta Dirac Function

Any function $f(x, e)$ can be converted into Delta Dirac Function provided that:

1. $\lim_{e \to 0} \[ \int_{-\infty}^{\infty} f(x, e) \space dx \] = 1$

2. $\forall x \neq 0: \lim_{e \to 0} \[ f(x, e) \] = 0$

3. $\lim_{e \to 0} \[ f(0 , e) \] = \infty$

For example, a $\textbf{Gaussian distribution}$ whose variance converges to zero, or a rect function whose width converges to zero.

![Gaussian](./CA1-Delta-Dirac-Power-and-Energy-Signals/Ouput_Delta_Dirac_Signal/Q4_E.gif)

![Gaussian](./CA1-Delta-Dirac-Power-and-Energy-Signals/Ouput_Delta_Dirac_Signal/Q4_C.gif)

### Implementation of Discrete Fourier Transform from Scratch

$x(t) = sin(2\pi t + \frac{\pi}{4}) e^{-t^{2}}$

![im1](./images/p2_A.png)

$x(t) = 1.5 + 2.5 sin(2\pi t)$

![im1](./images/p2_B.png)

### Nyquist Frequency and Aliasing 

Choosing the correct sampling rate for retrieving a continuous signal (with regard to the frequency of the original continuous signal).

![im2](./images/p3_A.png)

![im2](./images/p3_B.png)

### Frequency Resolution 

The relation between a signal's frequency resoultion and simpaling rate (SR) and total number of points sampled from that signal (npts).

$Frequnecy Resolution = \frac{SR}{npts}$

![im3](./images/p4_zeropad_A.png)

![im4](./images/p4_zeropad_B.png)

### Non-stationary Signals Analysis (in Frequency Domain)

Signals whose attributes (Amplitude, Frequency, Phase, Edge Effect) change in time domain cannot be anayzed properly if ordinary Fourier transform is taken from them. So other methods should be applied on them (next section).

![im5](./images/station_A.png)

![im6](./images/station_B.png)

![im7](./images/station_C.png)

![im8](./images/station_D.png)

![im9](./images/station_E_1.png)


### Short Time FT, Hann Window, Welch Method

For taking Fourier transform from non-stationary signals, a window starts from the beginning of the signal and takes piece-wise FT, and the results are stacked. Because of the discontinuity that exists between windows in this method, the resultant FT is spiky; therefore, Hann window and Welch method are introduced.

![im10](./images/short_fft.png)

![im10](./images/short_fft_2.png)

![im11](./images/welch_hann.png)

![im12](./images/welch_rect.png)

![im13](./images/Hann.png)




