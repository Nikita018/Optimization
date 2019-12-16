function [f] = nikitago_Final_p2e(t, theta1)
c1=1;
c2=1;
err = 1e-3;
Residual = 0;
n = 1;
while n<1000
        Residual = -((c1*t)./(c2 + t))+theta1;
        J = [t./(c2+t) (-c1*t)./((c2+t).^2)];
        C = J\Residual;
        c1 = C(1) + c1;
        c2 = C(2) + c2;
        Residual = -((c1*t)./(c2 + t))+theta1;
        if norm(Residual) <= err, break;
        end
    n = n+1;
end
f = (c1*t)./(c2 + t);
end

