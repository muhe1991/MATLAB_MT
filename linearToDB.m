function [dB] = linearToDB(linear)
    dB = 10 * log10(linear);
end