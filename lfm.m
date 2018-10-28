
% linear frequency modulation                                            / 

% Plots a sinusoidal function of the type                / 
% s = A(t)(sin(wt+x(t)+phi)), where w = angular  / 
% velocity, x(t) = frequency modulation, phi =      / 
% phase shift, and A(t) = amplitude. Second         / 
% plot for momentary frequency values                / 

clear, clc, clf; 
fs= 1000;                               % sampling frequency
f = 0;                             % Frequency 
w = 2*pi*f; 
phi = pi/4;                   % Initial phase shift 
f_mom = 200;          % Momentary frequency 


t = 0:1/fs:10000; 
%A = 100*exp(-t*0.3); 
A=1;
s = A.*sin(w*t + f_mom*t.^2 + phi); 

subplot(211)
plot(t,s,'r',t,f+f_mom.*t,'b') 
title('SINUSOIDAL PLOT') 
legend('s','f_mom','2')

subplot(212)
[y, fs]=audioread('alone.wav');
specgram(s,256,fs)
audiowrite('alone-1.wav',s/max(abs(s))*0.8,fs);



shg
