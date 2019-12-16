%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB script to solve initial value problem using ODE45
% Created by : Nikita Goswami
% Date : 12/12/2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[t,y]=ode45(@nikitago_Final_p1a,[0 1],0);   
computed_solution = y(57);
format long 
t_actual=1;
actual_solution = t_actual*(exp(-t_actual^2));
error = abs(actual_solution-computed_solution);


%err = 1e-6;
for i=2:500
    [t1,y1]= nikitago_Final_p1c(i);
    euler_error = abs(actual_solution-y1(i));
    if euler_error <= error, break;
    end
end
    


