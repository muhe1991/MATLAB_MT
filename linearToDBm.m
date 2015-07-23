function [dBm] = linearToDBm(linear)

dBm = 10 * log10(1000 * linear);

end