mkdir 'signal';
mkdir 'spectre';
tmax = 0.5;
fd = 512;
f1 = 10;
f2 = 80;
a1 = 1;
a2 = 0.7;
fd2 = fd/2;
t = 0:1./fd:tmax;
signal1 = a1*sin(2*pi*t*f1);
signal2 = a2*sin(2*pi*t*f2);
plot(signal1, 'b');
hold on
plot(signal2, 'r');
hold off
title('Signal');
print 'signal/spectre.png';
spectre1 = abs(fft(signal1,fd));
spectre2 = abs(fft(signal2,fd));
plot(spectre1,'b');
hold on
plot(spectre2,'r');
hold off
title('Spectre');
print 'spectre/spectre.png';
f = 1000*(0:fd2)./(2*fd);
specrte1 = 2*spectre1/fd2;
specrte2 = 2*spectre2/fd2;
plot(f,specrte1(1:fd2+1),'b');
hold on
plot(f,specrte2(1:fd2+1),'r');
hold off
xlim([0 100]);
title('Fixed spectre');
xlabel('Frequency (Hz)');
print 'spectre/spectre_fix.png';

