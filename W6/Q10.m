delta = zeros(1,length(t));
n = 0:Fs;

for i = n
    delta(i+1) = kronDel(i,0);
end

[B,A] = butter(3,0.25);
 h = filter(B,A,delta);
 H = fft(h,N);
 
 figure(7);
 plot(fvals,abs(H));
 title('3rd order Butterworth LPF');
 
 figure(8)
 [B,A] = butter(5,0.25);
 h = filter(B,A,delta);
 H = fft(h,Fs);
 plot(fvals,abs(H));
 title('5th order Butterworth LPF');
 
 figure(9);
 [B,A] = butter(8,0.25);
 h = filter(B,A,delta);
 H = fft(h,N);
 plot(fvals,abs(H));
 title('8th order Butterworth LPF');
 
 z = filter(B,A,ws);
 figure(10);
 Zk = fft(z,N);
 Z = zeros(1,length(Zk));

 for i = n1
    Z( i + N/2 + 1) = Zk(i + N);
 end

for j = n2
    Z(j + N/2 + 1) = Zk(N - j);
end
plot(fvals2,abs(Z));
ylabel('DFT Values');
xlabel('Frequency (Hz)')
title('Demodulated and Filtered output');