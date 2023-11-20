function a2 = area2(h2)
    
    tanAlfa = 12/6;
    d2 = 0;
    if h2 <= 7.5
        d2 = 6;
    elseif h2 > 7.5 && h2 < 19.5
        d2 = (19.5-h2)/tanAlfa;
    elseif h2 >= 19.5 && h2 <= 29.5
        d2 = 0;
    elseif h2 > 29.5 && h2 < 41.5
        d2 = (h2-29.5)/tanAlfa;
    elseif h2 >= 41.5 && h2 <= 49
        d2 = 6;
    end
    
    A2 = 9*(14+d2);
a2 = A2;