load('C:\Users\Stuart Lunt\Dropbox\University\Fourth\FinalYearProject\Code\noise\black1.mat');
b=d;
load('C:\Users\Stuart Lunt\Dropbox\University\Fourth\FinalYearProject\Code\noise\black2.mat');
b=[b d];
load('C:\Users\Stuart Lunt\Dropbox\University\Fourth\FinalYearProject\Code\noise\black3.mat');
b=[b d];

load('C:\Users\Stuart Lunt\Dropbox\University\Fourth\FinalYearProject\Code\noise\hardboard1.mat')
h=d;
load('C:\Users\Stuart Lunt\Dropbox\University\Fourth\FinalYearProject\Code\noise\hardboard2.mat')
h=[h d];
load('C:\Users\Stuart Lunt\Dropbox\University\Fourth\FinalYearProject\Code\noise\hardboard3.mat')
h=[h d];

figure(1)
clf
subplot(1,2,1)
ylim([0 0.3])
xlim([0 25])
title('Black platform')
xlabel('Frequency (Hz)')
ylabel('Amplitude')

% subplot(2,2,2)
% ylim([0 0.5])
% xlim([0 25])
% title('Black platform y')
% xlabel('Frequency (Hz)')
% ylabel('Amplitude')

subplot(1,2,2)
ylim([0 0.3])
xlim([0 25])
title('Hardboard platform')
xlabel('Frequency (Hz)')
ylabel('Amplitude')

% subplot(2,2,4)
% ylim([0 0.5])
% xlim([0 25])
% title('Hardboard platform y')
% xlabel('Frequency (Hz)')
% ylabel('Amplitude')

for i=1
    L=length(b(:,i));
    Fs=50;
    T=1/Fs;
    Y = fft(b(:,i));
    P2 = abs(Y/L);
    P1 = P2(1:L/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
    f = Fs*(0:(L/2))/L;
    subplot(1,2,1)
    hold on
    plot(f,P1)

%     L=length(b(:,i+1));
%     Y = fft(b(:,i+1));
%     P2 = abs(Y/L);
%     P1 = P2(1:L/2+1);
%     P1(2:end-1) = 2*P1(2:end-1);
%     f = Fs*(0:(L/2))/L;
%     subplot(2,2,2)
%     hold on
%     plot(f,P1) 
    
    L=length(h(:,i));
    Fs=50;
    T=1/Fs;
    Y = fft(h(:,i));
    P2 = abs(Y/L);
    P1 = P2(1:L/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
    f = Fs*(0:(L/2))/L;
    subplot(1,2,2)
    hold on
    plot(f,P1)

%     L=length(h(:,i+1));
%     Y = fft(h(:,i+1));
%     P2 = abs(Y/L);
%     P1 = P2(1:L/2+1);
%     P1(2:end-1) = 2*P1(2:end-1);
%     f = Fs*(0:(L/2))/L;
%     subplot(2,2,4)
%     hold on
%     plot(f,P1) 
end
%%
t=0:0.02:499*0.02;
figure(2)
plot(b)
ylim([175 182])
ylabel('Pixels')
xlabel('Samples')
title('Position of a stationary ball showing noise')