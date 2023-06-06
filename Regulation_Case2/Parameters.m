clear;clc;close all
%% Inertial Matrix
    J = diag([10000 9000 12000]); % kg.m^2
    
%% Initial Quaternion
    %q0 = [0.6853 0.6953 0.1531 0.1531]';
    q0 = [-0.6853 -0.6953 0.1531 0.1531]';
    
%% Initial Angulae Velocity
    omega0 = pi/180*[0.53 0.53 0.053]'; % rad/s
    %omega0 = [0.53 0.53 0.053]';
    
%% Desired Quaternion
    qc = [0 0 0 1]';
    
%% Control Gain
    kp = 50;
    kd = 500;