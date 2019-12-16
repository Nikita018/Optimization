function [] = nikitago_Final_p2c(t, theta1, L1, L2, h)
    [x,theta2]= nikitago_Final_p2b(theta1,L1, L2, h);
    
    % Computing velocity
    for i=1:length(x)
        if(i<length(x)-1)
            v(i) = (x(i+1)-x(i))/(t(i+1)-t(i));% Forward Difference
        else 
            v(i) = (x(i)-x(i-1))/(t(i)-t(i-1));% Backward Difference
        end
    end
    
    % Computing acceleration
    for i=1:length(v)
        if(i<length(v)-1)
            a(i) = (v(i+1)-v(i))/(t(i+1)-t(i));% Forward Difference
        else 
            a(i) = (v(i)-v(i-1))/(t(i)-t(i-1));% Backward Difference
        end
    end
    
    
    %Plotting
    subplot(3,2,1);
    plot(t,theta1);
    title('theta1 v/s time');
    ylabel('theta1');
    xlabel('time');
    subplot(3,2,2);
    plot(t, theta2);
    title('theta2 v/s time')
    ylabel('theta2');
    xlabel('time');
    %title('Visualizing velocity and acceleration of piston with and time'); 
    subplot(3,2,3);
    plot(t,x);
    title('x v/s time');
    ylabel('x');
    xlabel('time');
    subplot(3,2,4);
    plot(t,v);
    title('velocity v/s time');
    ylabel('v');
    xlabel('time');
    subplot(3,2,5);
    plot(t,a);
    title('acceleration v/s time');
    ylabel('a');
    xlabel('time');
end