%% PID value initializer

%% initial orientation

% q = angle2quat(pi/4,pi/4,pi/4,'XYZ'); % roll,pitch,yaw
q = angle2quat(pi/2,pi/2,pi/2,'XYZ');

qo_i=q(1);
qv1_i=q(2);
qv2_i=q(3);
qv3_i=q(4);

%% Controller parameters

K_roll=0.8;
Ti_roll=0.000;
Td_roll=0.4;
K_pitch=0.8;
Ti_pitch=0.000;
Td_pitch=0.4;
K_yaw=0.8;
Ti_yaw=0.000;
Td_yaw=0.5;

%% Model Values

J_x=7.8*10^-3;
J_y=7.8*10^-3;
J_z=10.22*10^-3;
m=0.835;
g=9.8;
km=342.4;
bm=5106.8;
d=0.16;