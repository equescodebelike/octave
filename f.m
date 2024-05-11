x=-10:0.1:10;
y=sin(x)+ 1/3*sin(3*x)+1/5*sin(5*x);
plot(x, y, "-ok; y=sin(x)+ 1/3*sin(3*x)+1/5*sin(5*x);", "markersize", 4);
grid on;
xlabel('axis X');
ylabel('y');
title('y=sin(x)+ 1/3*sin(3*x)+1/5*sin(5*x)');
