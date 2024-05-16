ug = load("CERLX.txt"); % earthquake record
dtug = 1/256; % sampling time of earthquake record
freq = logspace(0,2.5,100); % frequency points at which to 
                            % generate spectrum values
zeta = 0.02; % damping ratio to use when generating response spectrum

addpath ..\src
[Sd, Sv, Sa] = ComputeResponseSpectrum(ug, dtug, freq, zeta);
rmpath ..\src

figure,
    semilogx(freq, Sa),
    grid on,
    xlabel('frequency (Hz)')
    ylabel('Sa (g)')