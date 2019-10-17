t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t,y1);
y2 = cos(2*pi*4*t);
hold on;            ##keep previous plot
plot(t,y2,'r');     ##plot in red
xlabel('time');
ylabel('value');
legend('sin', 'cos');
title('my first plot');
print -dpng 'd:\code\octave\myFirstPlot.png'

##close

figure(2); plot(t,y1);    ##open the plots in different windows
figure(3); plot(t,y2);

subplot(1,2,1);   ##divides plot into a 1x2 grid, accesses first element
plot(t,y1);
subplot(1,2,2);   ##access 2nd element
plot(t,y2);

axis([0.5 1 -1 1]);

A = magic(5);

imagesc(A);                           ##plots a grid where each color represents a number from the array
imagesc(a), colorbar, colormap gray;


