Fs = 8192;
duration = 1;%duration of the input signal, in seconds;
N = Fs * duration;%number of sampling points
t = [0:1/Fs:duration];
xs = sin(2*pi*100*t + 2*pi*100*(t.*t));
Xk = fft(xs,N);
figure(1);
plot([0:N-1],abs(Xk));
title('Double Sided FFT - without FFTShift');	 	 
xlabel('Sample points (N-point DFT)')	 	 
ylabel('DFT Values');


figure(2);
nVals=(0:N-1)/N; %Normalized DFT Sample points	 	 
plot(nVals,abs(Xk));	 	 
title('Double Sided FFT - without FFTShift');	 	 
xlabel('Normalized Frequency')	 	 
ylabel('DFT Values');

figure(3);
fvals = nVals * Fs; %Absolute Frequency values
plot(fvals,abs(Xk));	 	 
title('Double Sided FFT - without FFTShift');	 	 
xlabel('Frequency (Hz)')	 	 
ylabel('|DFT Values|');

pause;

%Q7
figure(4);
fvals2 =[-N/2:N/2-1]; %DFT Sample points
n1 = [-N/2:0];
n2 = [1:N/2-1];
X = zeros(1,length(Xk));
for i = n1
    X( i + N/2 + 1) = Xk(i + N);
end

for j = n2
    X(j + N/2 + 1) = Xk(N - j);
end
plot(fvals2,abs(X));	 	 
title('Q7: Double Sided FFT - with FFTShift');	 	 
xlabel('Frequency (Hz)')		 	 
ylabel('DFT Values');

pause;
%Q8
figure(5);
carrierFreq = 1000;%Herz
ys = xs.* cos(2*pi*carrierFreq * t);
Yk = fft(ys,N);
Y = zeros(1,length(Yk));
for i = n1
    Y( i + N/2 + 1) = Yk(i + N);
end

for j = n2
    Y(j + N/2 + 1) = Yk(N - j);
end
plot(fvals2,abs(Y));
title('Q8:Modulation');

%Q9
figure(6);
ws = ys.* cos(2*pi*carrierFreq * t);
Wk = fft(ws,N);
W = zeros(1,length(Wk));

%for i = n1
%   W( i + N/2 + 1) = Wk(i + N);
%end

%for j = n2
%    W(j + N/2 + 1) = Wk(N - j);
%end
Wk2 = [Wk,Wk];
W = Wk2(N/2:2*N-N/2-1);

plot(fvals2,abs(W));
title('Q9:Demodulation');


