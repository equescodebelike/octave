tmax = 0.5;
fd = 512;
f1 = 10;
f2 = 40;
a1 = 1;
a2 = 0.7;
fd2 = fd/2;
t = 0:1./fd:tmax;
signal1 = a1*sin(2*pi*t*f1);
signal2 = a2*sin(2*pi*t*f2);
signal = signal1 + signal2;
plot(signal);
title('Signal');
print 'signal/spectre_sum.png';
spectre = fft(signal,fd);
f = 1000*(0:fd2)./(2*fd);
spectre = 2 * sqrt(spectre.*conj(spectre))./fd2;
plot(f,spectre(1:fd2 + 1))
xlim([0 100]);
title('Spectre');
xlabel('Frequency (Hz)');
print 'spectre/spectre_sum.png';


