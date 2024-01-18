%   "Seismic Signal Analyzer"

% Specify the path to our Excel file (data file)
excelFilePath = 'D:\DSP final project\database.csv';

% Load data from the Excel file as a table
earthquakeTable = readtable(excelFilePath);

% Display the first few rows of the data
disp('First few rows of the earthquake data:');
head(earthquakeTable)

% Analyzing data
% Display summary statistics of the data
disp('Summary statistics of the earthquake data:');
summary(earthquakeTable)

% Perform statistical operations on data
meanMagnitude = mean(earthquakeTable.Magnitude);
meanMagnitude
maxDepth = max(earthquakeTable.Depth);
maxDepth

seismicMoment = 10.^(1.5 * (earthquakeTable.Magnitude + 6.06));
seismicMoment

% Scatter plot of earthquake locations
figure;
scatter(earthquakeTable.Longitude, earthquakeTable.Latitude, 20, earthquakeTable.Magnitude, 'filled');
title('Earthquake Locations');
xlabel('Longitude');
ylabel('Latitude');
colorbar;
colormap('jet');

% Histogram of earthquake magnitudes
figure;
histogram(earthquakeTable.Magnitude, 'BinWidth', 0.5, 'FaceColor', 'blue', 'EdgeColor', 'black');
title('Histogram of Earthquake Magnitudes');
xlabel('Magnitude');
ylabel('Frequency');

% Extract seismic signal from the data
seismicSignal = earthquakeTable.Magnitude;

% Fourier analysis of the seismic signal
timeStep = 0.01;  
Fs = 1 / timeStep; % Sampling frequency
N = numel(seismicSignal); % Number of data points
frequencies = Fs * (0:(N/2)) / N; % Frequency axis for plotting

% Perform Fourier Transform
seismicFFT = fft(seismicSignal);
magnitudeFFT = (2/N) * abs(seismicFFT(1:N/2+1));

% Plot the seismic signal and its FFT graph
figure;

subplot(2,1,1);
plot(0:timeStep:(numel(seismicSignal)-1)*timeStep, seismicSignal);
title('Simulated Seismic Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(frequencies, magnitudeFFT);
title('One-sided FFT');
xlabel('Frequency (Hz)');

% Normalization of FFT
magnitudeFFT = (2/N) * abs(seismicFFT(1:N/2+1));
magnitudeFFT

%   "Seismic Signal Analysis Toolbox"

% Specify the path to our Excel file (data file)
excelFilePath = 'D:\DSP final project\database.csv';

% Load data from the Excel file as a table
earthquakeTable = readtable(excelFilePath);

% Display the first few rows of the data
disp('First few rows of the earthquake data:');
head(earthquakeTable)

% Analyzing data
% Display summary statistics of the data
disp('Summary statistics of the earthquake data:');
summary(earthquakeTable)

% Perform statistical operations on data
meanMagnitude = mean(earthquakeTable.Magnitude);
meanMagnitude
maxDepth = max(earthquakeTable.Depth);
maxDepth

seismicMoment = 10.^(1.5 * (earthquakeTable.Magnitude + 6.06));
seismicMoment

% Scatter plot of earthquake locations
figure;
scatter(earthquakeTable.Longitude, earthquakeTable.Latitude, 20, earthquakeTable.Magnitude, 'filled');
title('Earthquake Locations');
xlabel('Longitude');
ylabel('Latitude');
colorbar;
colormap('jet');

% Histogram of earthquake magnitudes
figure;
histogram(earthquakeTable.Magnitude, 'BinWidth', 0.5, 'FaceColor', 'blue', 'EdgeColor', 'black');
title('Histogram of Earthquake Magnitudes');
xlabel('Magnitude');
ylabel('Frequency');

% Extract seismic signal from the data
seismicSignal = earthquakeTable.Magnitude;

% Fourier analysis of the seismic signal
timeStep = 0.01;  
Fs = 1 / timeStep; % Sampling frequency
N = numel(seismicSignal); % Number of data points
frequencies = Fs * (0:(N/2)) / N; % Frequency axis for plotting

% Perform Fourier Transform
seismicFFT = fft(seismicSignal);
magnitudeFFT = (2/N) * abs(seismicFFT(1:N/2+1));

% Plot the seismic signal and its FFT graph
figure;

subplot(2,1,1);
plot(0:timeStep:(numel(seismicSignal)-1)*timeStep, seismicSignal);
title('Simulated Seismic Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(frequencies, magnitudeFFT);
title('One-sided FFT');
xlabel('Frequency (Hz)');

% Normalization of FFT
magnitudeFFT = (2/N) * abs(seismicFFT(1:N/2+1));
magnitudeFFT

