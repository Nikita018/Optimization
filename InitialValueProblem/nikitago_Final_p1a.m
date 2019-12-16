function yp=nikitago_Final_p1a(t, y)
    if t==0
       yp=1;
    else
        yp=y*(-2*t+(1/t)); 
    end