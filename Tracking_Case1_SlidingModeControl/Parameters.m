%% Three reaction wheels are used to control the spacecraft

%% True inertial matrix
    J = [399 -2.81 -1.31; ...
         -2.81 377 2.54; ...
         -1.31 2.54 377]; % kg.m^2
    
%% Assumed inertial matrix
    J_hat = [380 -2.81 -1.31; ...
             -2.81 360 2.54; ...
        	 -1.31 2.54 340]; % kg.m^2
         
%% External disturbance
    d = [0.005*sin(0.05*t) 0.003 0.005*cos(0.05*t)]'; % Nm
    
    Omega = 60*pi/180; % rad
    k = 0.015;
    G = 0.15*eye(3);
    epsilon = 0.01;
    
%% Three commanded Euler angles 3-1-3
    dphi_c = 0.001745; % rad/s
    theta_c = 0.3927; % rad
    dxi_c = 0.04859; % rad/s
    
    dtheta_c = 0; % rad/s
    
%% The commanded quaternion
    qc1 = sin(theta_c/2)*cos((phi_c - xi_c)/2);
    qc2 = sin(theta_c/2)*sin((phi_c - xi_c)/2);
    qc3 = cos(theta_c/2)*sin((phi_c + xi_c)/2);
    qc4 = cos(theta_c/2)*cos((phi_c + xi_c)/2);
    
    qc = [qc1 qc2 qc3 qc4]';
    
%% The commanded body rates
    omega_c = [dphi_c*sin(theta_c)*sin(xi_c) dphi_c*sin(theta_c)*cos(xi_c) dxi_c]'; % rad/s
    
%% The derivative of The commanded body rates
    domega_c = dphi_c*dxi_c*[sin(theta_c)*cos(xi_c) -sin(theta_c)*sin(xi_c) 0]'; % rad/s^2
    
%% Initial quaternion
    q0 = Quater_Product([0 0 sin(Omega/2) cos(Omega/2)]')*qc0;
    
%% The initial angular velocity
    omega0 = zeros(3,1);
    h0 = zeros(3,1);
    
    
    
    
    