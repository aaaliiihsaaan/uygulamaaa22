%1.soru a þýkký
clc
clear all
close all
fs = 100000;
f=100
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*f*50*t);
subplot(1,1,1)
plot(t,x1)
axis([0 0.1 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
%%1.sorub þýkký
clc
clear all
close all
fs = 1000000;
f=20
t = 0:1/fs:1.5;
x2 = square(2*pi*f*50*t);
subplot(2,1,1)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
%%1. soru c þýkký
clc
clear all
close all
fs = 100000;
t = -1:1/fs:1;
x1 = tripuls(t,100e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
%%1. soru d þýkký
clc
clear all
close all
fs = 100000;
t = -1:1/fs:1;
x2 = rectpuls(t,50e-3);
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%% 1. soru e þýkký
clc
clear all
close all
tc = gauspuls('cutoff',50e3,0.5,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1= gauspuls(t1,50e3,0.6);
plot(t1,y1)
%1. soru f þýkký
clc
clear all
close all
fs = 200E9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 1e-9;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);
subplot(2,1,1)
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%1. soru g þýkký
clc
clear all
close all
T = 0 : 1/50e3 : 50e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.6.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
subplot(2,1,2)
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
%2. soru
clc
clear all
close all
t = (0:1.2:10)';

impulse = t==0;
stem(impulse)
subplot(2,2,1);


t = (1:20:1000)';
unitstep = t>=0;
stem(unitstep);
subplot(2,2,2)
t = (-1:0.01:1)';
ramp = t*unitstep;
plot(ramp);
subplot(1,2,3)
%3. soru
clc
clear all
close all
f=1000;
x = -pi:0.01:pi;
plot(x,sin(x)), grid on

x = -pi:0.01:pi; 

plot(x,cos(x))
grid on
%4. soru


%5.soru
clc
clear all
close all
n=0:89;
y=(0.9.^n).*sin(2*pi*n/24);
sum(abs(y.^2))
%6. soru
t = [0:0.1:2*pi]
a = sin(2*pi*1*t);
plot(t,a)
%6.soru cos
x = -pi:0.01:pi; 
plot(x,cos(x))
grid on