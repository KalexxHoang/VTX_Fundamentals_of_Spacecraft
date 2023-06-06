clear;clc;close all
%% Inertial Matrix
    J = [6400 -76.4 -25.6; ...
         -76.4 4730 -40; ...
         -25.6 -40 8160]; % kg.m^2
    
%% Initial Quaternion
    q0 = (1/sqrt(2))*[1 0 0 1]';
    
%% Initial Angulae Velocity
    omega0 = [0.01 0.01 0.01]'; % rad/s
    
%% Desired Quaternion
    qc = [0 0 0 1]';
    
%% Control Gain
    kp = 10;
    kd = 150;