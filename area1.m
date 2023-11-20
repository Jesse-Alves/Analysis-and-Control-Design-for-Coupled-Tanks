function a1 = area1(h1)
 
    tanAlfa = 12/6;
    d1 = 0;
    if h1 <= 7.5
        d1 = 0;
    elseif h1 > 7.5 && h1 < 19.5
        d1 = (h1-7.5)/tanAlfa;
    elseif h1 >= 19.5 && h1 <= 29.5
        d1 = 6;
    elseif h1 > 29.5 && h1 < 41.5
        d1 = (41.5-h1)/tanAlfa;
    elseif h1 >= 41.5 && h1 <= 49
        d1 = 0;
    end
    A1 = 9*(8+d1);
a1 = A1;