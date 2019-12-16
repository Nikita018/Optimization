function [x,theta2]= nikitago_Final_p2b(theta1,L1, L2, h)

for i=1:length(theta1)
    theta1_val=theta1(i);
    f = @(theta2) (L1*sin(theta1_val)+L2*sin(theta2)-h) ;
    df = @(theta2)(L2*cos(theta2));
    theta_init = 2*pi;
    theta2(i)= newtonRhapson(f,df,theta_init);
    x(i)= L1*cos(theta1_val)+L2*cos(theta2(i));
end
end




function [x]= newtonRhapson(f,df,initval)
N = 1000;
err = 0.0001;

xx = initval;
x(1) = xx;


for i=2:N
    a = xx;
    xx = xx - f(a)/df(a);
    x(i) = xx;
    Err = abs(x(i)-x(i-1));
    if Err < err, break;
    end
end
 x=x(i);
end

