%function rot3d = rot3d()
%in = input('Rotation kring x = 1, kring y = 2, kring z = 3, eller välj någon kombination av dessa.' ');

%Rotationsmatriser:
Rx = ([1 0 0; 0 cos(phi) -sin(phi) ;0 sin(phi) cos(phi)]);
Ry = ([cos(phi) 0 sin(phi); 0 1 0; -sin(phi) 0 cos(phi)]);
Rz = ([cos(phi) -sin(phi) 0; sin(phi) cos(phi) 0; 0 0 1]);

Rxy = Rx*Ry;
Rxz = Rx*Rz;
Ryz = Ry*Rz;

Rxyz = Rx*Ry*Rz;

