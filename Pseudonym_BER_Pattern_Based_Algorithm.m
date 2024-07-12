
% SIMULATION FOR PAM BASED WATERMARKING ON 4 QAM OFDM SIGNALS
% SIMULATION PLOTS ARE ALSO COMPARED WITH EXPERIMENTAL RESULTS
% This algorithm plots the probability of pseudon bit error Vs Eb/No

close all;
clear all;

figure()

% m = 0.2
x = [-20,-19,-17,-15,-13, -11,-8];
pb_error = [3.13e-01, 3.13e-01, 2.33e-01, 9.8e-02, 2.4e-02, 3.8e-03, 2.0e-6];
semilogy(x, pb_error,'b--o', 'LineWidth',2);
hold on

% m = 0.3
x = [-20,-19,-17,-15,-13, -11, -9];
pb_error = [2.35e-01, 2.35e-01, 1.09e-01, 4.2e-02, 9.0e-03, 2.9e-04, 1.0e-6];
semilogy(x, pb_error,'r--o', 'LineWidth',2);
hold on

% m = 1.0 
x = [-20,-19,-18,-15,-14,-13];
pb_error = [0.295, 0.155, 0.111, 0.0042, 0.00042, 9.47e-05];
semilogy(x, pb_error,'k--o', 'LineWidth',2);

hold off


grid
set(gca,'FontSize',14)
set(gca,'ylim',[8.5e-5, 1])
set(gca,'xlim',[-19, -8])
xlabel('Eb/No [dB] at Passive RX')
ylabel('P[Pseudonym Bit Error at Passive RX]')
legend('Watermarking with 20% modulation','Watermarking with 30% Modulation','Separate Subchannel with 100% Modulation')
%title('Simulation Vs Experimental Results')
