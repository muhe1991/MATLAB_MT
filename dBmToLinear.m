function [linear] = dBmToLinear(dBm)

linear = power(10, (dBm - 30) / 10);

end