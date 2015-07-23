0.0224^2+0.0646^2+0.1498^2
normest([0.0224 0.0646 0.1498])^2

if (radius <1)
    v_old = [1 1 1]';
    for i=1:10000000
        v_new = matrix * v_old;
        v_new'
        %diff = abs(normest(v_old) - normest(v_new));
        normest(v_new)^2
        if (normest(v_new)^2 < 1e-10)
            break;
        end
        v_old = v_new;
    end
end


i
