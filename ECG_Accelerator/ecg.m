clc;
clear;
close all;

% Sampling frequency
fs = 500;  % Standard ECG sampling rate (Hz)
t_total = 5; % Total duration (seconds) for 5 beats
t = 0:1/fs:t_total; % Time vector

% Heart rate (bpm)
HR = 60;  % 60 BPM (1 beat per second)
f_HR = HR / 60; % Convert BPM to Hz
ecg_period = 1 / f_HR; % One heartbeat duration

% ECG waveform parameters (P-QRS-T complex)
A_p = 0.1;  % P wave amplitude
A_q = -0.15; % Q wave amplitude
A_r = 1.2;  % R wave amplitude (main peak)
A_r_neg = -0.5; % Occasional Negative R peak
A_s = -0.4; % S wave amplitude
A_t = 0.3;  % T wave amplitude

% Wave timing (based on ECG characteristics)
T_p = -0.2 * ecg_period;  % P wave occurs before QRS
T_q = -0.05 * ecg_period; % Q wave slightly before R peak
T_r = 0;                 % R wave at center
T_r_neg = 0.02 * ecg_period; % Negative R peak (occasional)
T_s = 0.05 * ecg_period;  % S wave after R
T_t = 0.3 * ecg_period;   % T wave occurs later

% Wave durations (Gaussian standard deviations)
sigma_p = 0.08 * ecg_period;  % P wave width
sigma_q = 0.02 * ecg_period;  % Q wave width
sigma_r = 0.03 * ecg_period;  % R wave width
sigma_r_neg = 0.03 * ecg_period;  % Negative R wave width
sigma_s = 0.02 * ecg_period;  % S wave width
sigma_t = 0.12 * ecg_period;  % T wave width

% Generate ECG for one heartbeat
t_single = -ecg_period/2:1/fs:ecg_period/2;
ecg_heartbeat = zeros(size(t_single));

for i = 1:length(t_single)
    ecg_heartbeat(i) = ...
        A_p * exp(-((t_single(i) - T_p) .^ 2) / (2 * sigma_p^2)) + ... % P wave
        A_q * exp(-((t_single(i) - T_q) .^ 2) / (2 * sigma_q^2)) + ... % Q wave
        A_r * exp(-((t_single(i) - T_r) .^ 2) / (2 * sigma_r^2)) + ... % R wave
        (mod(i, round(fs * ecg_period * 2)) == 0) * A_r_neg * exp(-((t_single(i) - T_r_neg) .^ 2) / (2 * sigma_r_neg^2)) + ... % Occasional Negative R peak
        A_s * exp(-((t_single(i) - T_s) .^ 2) / (2 * sigma_s^2)) + ... % S wave
        A_t * exp(-((t_single(i) - T_t) .^ 2) / (2 * sigma_t^2));      % T wave
end

% Generate a full ECG signal with 5 beats
num_beats = 5;  % Exactly 5 R-peaks
final_ecg = [];
final_t = [];

for i = 1:num_beats
    final_ecg = [final_ecg, ecg_heartbeat];  % Append each heartbeat
    final_t = [final_t, t_single + (i-1) * ecg_period];  % Adjust time axis
end

% Add Moderate Noise Components
baseline_wander = 0.05 * sin(2 * pi * 0.5 * final_t);  % Mild baseline drift (0.5Hz)
muscle_noise = 0.02 * randn(size(final_t));          % Smaller high-frequency noise
powerline_noise = 0.01 * sin(2 * pi * 50 * final_t);  % Weaker 50Hz powerline interference

% Final Noisy ECG Signal
ecg_noisy = final_ecg + baseline_wander + muscle_noise + powerline_noise;

% Save ECG data for further processing
fileID = fopen('ecg_noisy.txt', 'w');
fprintf(fileID, '%f\n', ecg_noisy);
fclose(fileID);



plot(final_t, ecg_noisy, 'r', 'LineWidth', 1.5);
title('ECG Signal');
xlabel('Time (s)');
ylabel('Amplitude (mV)');
grid on;
axis tight;
