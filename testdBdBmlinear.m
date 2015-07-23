clc

signal_dBm = -50;
interference_dBm = -60;
noise_dBm = -70;
SINR_dB = signal_dBm - linearToDBm(dBmToLinear(interference_dBm) + dBmToLinear(noise_dBm))


signal = dBmToLinear(signal_dBm);
interference = dBmToLinear(interference_dBm);
noise = dBmToLinear(noise_dBm);
SINR = signal/(interference+noise)

linearToDB(SINR)
dBToLinear(SINR_dB)
SINR_dB == linearToDB(SINR)


ratio = dBToLinear(5)/dBToLinear(20)
ratoo = 5/20

linearToDBm(0)

dBmToLinear(-200)