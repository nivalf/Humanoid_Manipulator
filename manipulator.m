L(1) = DH('d', 0, 'a', 1, 'alpha', 0);
L(2) = DH('d', 0, 'a', 1, 'alpha', 0);
L(3) = DH('d', 0, 'a', 1, 'alpha', 0);
robot = SerialLink(L, 'name', 'RRR Manipulator');




robot.qlim = [
    -pi/2 pi/2; % Joint 1 limits
    -pi/2 pi/2; % Joint 2 limits
    -pi/2 pi/2  % Joint 3 limits
];

numSteps = 50; % Number of steps along each joint axis

workspacePoints = robot.workspace(robot.qlim, 'points', numSteps);

robot.plot([0 0 0]); % Plot the manipulator
hold on;
plot(workspacePoints(:, 1), workspacePoints(:, 2), 'b.'); % Plot the workspace points
xlabel('X-axis');
ylabel('Y-axis');
title('RRR Manipulator Workspace');
