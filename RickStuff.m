clc
clear
close all


p1=[0 0 0];
p2=[3 0 0];
p3=[3 3 0];
p4=[0 3 0];
p5=[0 0 3];
p6=[3 0 3];
p7=[3 3 3];
p8=[0 3 3];

phi = 2*pi/100;

punkter = [p1' p2' p3' p4' p5' p6' p7' p8'];

x = [p1(1) p2(1) p3(1) p4(1)];
y = [p1(2) p2(2) p3(2) p4(2)];
z = [p1(3) p2(3) p3(3) p4(3)];

a = [p5(1) p6(1) p7(1) p8(1)];
b = [p5(2) p6(2) p7(2) p8(2)];
c = [p5(3) p6(3) p7(3) p8(3)];

d = [p4(1) p1(1) p5(1) p8(1)];
e = [p4(2) p1(2) p5(2) p8(2)];
f = [p4(3) p1(3) p5(3) p8(3)];

g = [p5(1) p6(1) p2(1) p1(1)];
h = [p5(2) p6(2) p2(2) p1(2)];
j = [p5(3) p6(3) p2(3) p1(3)];

k = [p6(1) p7(1) p3(1) p2(1)];
l = [p6(2) p7(2) p3(2) p2(2)];
m = [p6(3) p7(3) p3(3) p2(3)];

n = [p7(1) p8(1) p4(1) p3(1)];
o = [p7(2) p8(2) p4(2) p3(2)];
p = [p7(3) p8(3) p4(3) p3(3)];

% axis([-1 3 -1 5 -1 3]);
% grid;
% hold on;
% 
% fill3(x,y,z,1);
% fill3(a, b, c, 'g');
% fill3(d, e, f, 'r');
% fill3(g, h, j, 'm');
% fill3(k, l, m, 'r');
% fill3(n, o, p, 'r');

mittpunkt = [(p1+p2+p3+p4+p5+p6+p7+p8)/8]';
for j = 1:200
    
    clf
    
    Rx = ([1 0 0; 0 cos(phi) -sin(phi) ;0 sin(phi) cos(phi)]);
    Ry = ([cos(phi) 0 sin(phi); 0 1 0; -sin(phi) 0 cos(phi)]);
    Rz = ([cos(phi) -sin(phi) 0; sin(phi) cos(phi) 0; 0 0 1]);
    
    Rxy = Rx*Ry;
    Rxz = Rx*Rz;
    Ryz = Ry*Rz;
    Rxyz = Rx*Ry*Rz;
    for s = 1:length(punkter)
        temp = punkter(:,s)-mittpunkt;
        Y(:,s)= temp';
        s = s+1;
    end
    RotOrigo =  Rxyz*Y;
    for s = 1:length(punkter)
        temp = RotOrigo(:,s)+mittpunkt;
        Q(:,s)= temp;
        s = s+1;
    end

    p1 = Q(:,1)';
    p2 = Q(:,2)';
    p3 = Q(:,3)';
    p4 = Q(:,4)';
    p5 = Q(:,5)';
    p6 = Q(:,6)';
    p7 = Q(:,7)';
    p8 = Q(:,8)';

    x = [p1(1) p2(1) p3(1) p4(1)];
    y = [p1(2) p2(2) p3(2) p4(2)];
    z = [p1(3) p2(3) p3(3) p4(3)];

    a = [p5(1) p6(1) p7(1) p8(1)];
    b = [p5(2) p6(2) p7(2) p8(2)];
    c = [p5(3) p6(3) p7(3) p8(3)];

    d = [p4(1) p1(1) p5(1) p8(1)];
    e = [p4(2) p1(2) p5(2) p8(2)];
    f = [p4(3) p1(3) p5(3) p8(3)];

    g = [p5(1) p6(1) p2(1) p1(1)];
    h = [p5(2) p6(2) p2(2) p1(2)];
    j = [p5(3) p6(3) p2(3) p1(3)];

    k = [p6(1) p7(1) p3(1) p2(1)];
    l = [p6(2) p7(2) p3(2) p2(2)];
    m = [p6(3) p7(3) p3(3) p2(3)];

    n = [p7(1) p8(1) p4(1) p3(1)];
    o = [p7(2) p8(2) p4(2) p3(2)];
    p = [p7(3) p8(3) p4(3) p3(3)];

    axis([-5 5 -5 5 -5 5]);
    grid;
    hold on;
    xlabel('x'); ylabel('y'); zlabel('z'); 

    fill3(x, y, z, 'r');
    fill3(a, b, c, 'r');
    fill3(d, e, f, 'r');
    fill3(g, h, j, 'r');
    fill3(k, l, m, 'r');
    fill3(n, o, p, 'r');
    pause(0.001);
    punkter = [p1' p2' p3' p4' p5' p6' p7' p8'];
end