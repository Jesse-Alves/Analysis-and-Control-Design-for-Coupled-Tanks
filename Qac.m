function y = Qac(h1,h2)
    Kac = 20;
    qac = 0;
    if h1 >= h2
        qac = -Kac*sqrt(abs(h1 - h2));
    elseif h1 < h2
        qac = Kac*sqrt(abs(h1 - h2));
    end
y = qac;