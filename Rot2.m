n = input('Antal Hörn')
axis([-10 10 -10 10])
[x y] = ginput(n);
t = input('vinkel');
a = [cos(t) sin(t)]';
b = [-sin(t) cos(t)]';
RotMatris = [a b];
xyvektorer = [x'; y'];
%subplot(2,1,1)
%axis([-10 10 -10 10])
patch(xyvektorer(1,1:n), xyvektorer(2,1:n),'g')
sum1 = sum(xyvektorer(1,:))
sum2 = sum(xyvektorer(2,:))
mitt = [sum1 sum2]/length(xyvektorer);
for s = 1:length(xyvektorer)
    temp = xyvektorer(:,s)-mitt'
    Y(:,s)= temp
    s = s+1
end
RotOrigo =  RotMatris*Y
for s = 1:length(xyvektorer)
    temp = RotOrigo(:,s)+mitt'
    RotPol(:,s)= temp
    s = s+1
end
%subplot(2,1,2)
%axis([-10 10 -10 10])
%figure
patch(RotPol(1,1:n), RotPol(2,1:n),'r')