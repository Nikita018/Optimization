%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function to solve the intial value problem
% The methods used are Explicit Improved Euler
% Created by : Nikita Goswami
% Date : 12/12/2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%   Input variables: 
%       N : number of time steps
%   Output variables :
%       y : solution vector
%       t : times 


function [t,y]= nikitago_Final_p1c(N)
    
    format long
    t=linspace(0,1,N);
    actual_solution = round(1*(exp(-1^2)),5);
    h=t(2)-t(1);
    y_in = 0;
    y(1)=y_in;
    for i=2:N
        k1= nikitago_Final_p1a(t(i-1),y(i-1));
        y1= y(i-1)+ h*k1;
        k2= nikitago_Final_p1a(t(i-1)+h,y1);
        sm = (k1+k2)/2; %modified slope
        yi= y(i-1)+ h*sm;
        y(i)=yi;
    end
end
    