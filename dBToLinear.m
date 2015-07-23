function [linear] = dBToLinear(dB)

linear = power(10, (dB) / 10);

end