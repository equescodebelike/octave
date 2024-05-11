tmax = 0.5;
fd = 512;
f1 = 10;
f2 = 40;
fd2 = fd/2;
t = linspace(0, 0.5, 512);
signal1 = sin(2*pi*t*f1);
signal2 = sin(2*pi*t.*(f2 + sin(2*pi*t*f1)));
%signal = ;
plot(signal1, 'r');
hold on
plot(signal2, 'b');
%plot(signal1, 'r');
%plot(-signal1, 'r');
hold off
title('Signal');
print 'signal/fm.png';
