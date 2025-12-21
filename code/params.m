clear;

% Gravity
g = 9.81; %m/s^2

% Initial force push on torso
F_inp = 70; %N

% Control params
% Ankle joint dimensions and params
ankle         = [];
ankle.radius  = 0.02; %m
ankle.length  = 0.1; %m
ankle.kp      = 1500.0;
ankle.kd      = 300.0;
ankle.th_des  = pi/2;
ankle.th_init = pi/2;

% Hip joint dimensions and params
hip_joint         = [];
hip_joint.radius  = 0.02; %m
hip_joint.length  = 0.1; %m
hip_joint.kp      = 750.0;
hip_joint.kd      = 250.0;
hip_joint.th_des  = 0.0;
hip_joint.th_init = 0.0;

% For bang-bang control
hip_joint.T1 = 0.05; %s
hip_joint.T2 = 2*hip_joint.T1; %s

% Shoulder joint dimensions and params
shoulder         = [];
shoulder.radius  = 0.02; %m
shoulder.length  = 0.1; %m
shoulder.kp      = 30.0;
shoulder.kd      = 5.0;
shoulder.th_des  = pi;
shoulder.th_init = pi;


% Body anthropometry
% Foot
foot         = [];
foot.length  = 0.2; %m
foot.width   = 0.1; %m
foot.height  = 0.04; %m
foot.density = 1.10; %g/cm^3
foot.mass    = 1000 * foot.length * foot.width * foot.height * foot.density; %kg
foot.color   = [0.25 0.4 0.7]; %rgb

% Heel
heel         = [];
heel.length  = 0.05; %m
heel.width   = 0.1; %m
heel.height  = 0.04; %m
heel.density = 1.10; %g/cm^3
heel.mass    = 1000 * heel.length * heel.width * heel.height * heel.density; %kg
heel.color   = [0.25 0.4 0.7]; %rgb

% Leg
leg         = [];
leg.length  = 1.0; %m
leg.width   = 0.1; %m
leg.height  = 0.04; %m
leg.density = 2.06; %g/cm^3
leg.mass    = 1000 * leg.length * leg.width * leg.height * leg.density; %kg
leg.color   = [0.25 0.4 0.7]; %rgb

% Torso
torso         = [];
torso.length  = 0.6; %m
torso.width   = 0.34; %m
torso.height  = 0.08; %m
torso.density = 2.50; %g/cm^3
torso.mass    = 1000 * torso.length * torso.width * torso.height * torso.density; %kg
torso.color   = [0.25 0.4 0.7]; %rgb

% arm
arm         = [];
arm.length  = 0.8; %m
arm.width   = 0.1; %m
arm.height  = 0.08; %m
arm.density = 0.85; %g/cm^3
arm.mass    = 1000 * arm.length * arm.width * arm.height * arm.density; %kg
arm.color   = [0.25 0.4 0.7]; %rgb

% Muscle parameters
mp = [];

% SHARED MUSCLE PARAMS

% excitation-contraction coupling
mp.preA =  0.01;  % [] preactivation
mp.tau = 0.01;    % [s] delay time constant

% CE force length relation
mp.w = 0.56;  % [lopt] width
mp.c = 0.05;  % [] remaining force at +/- width

% CE force velocity relation
mp.N = 1.5;  % [Fmax] eccentric force enhancement
mp.K = 5;    % [] shape factor

% SE force length relation
mp.eref = 0.04; %[lslack] tendon reference strain

% soleus muscle
sol        = [];
sol.Fmax   = 1500; % maximum isometric force [N]
sol.lopt   = 0.05; % optimum fiber length CE [m]
sol.vmax   =   12; % maximum contraction velocity [lopt/s]
sol.lslack = 0.40; % tendon slack length [m]

% tibialis anterior
ta        = [];
ta.Fmax   =  800; % maximum isometric force [N]
ta.lopt   = 0.06; % optimum fiber length CE [m]
ta.vmax   =   12; % maximum contraction velocity [lopt/s]
ta.lslack = 0.24; % tendon slack length [m]
