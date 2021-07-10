function prakt
clc;
t=[0 40];
[t,X]=ode45(@Kosh,t,[9;4]);
plot(t,X(:,1), t,X(:,2));
legend('Жертва','Хищник');
end
 
function out=Kosh(~,x)
a1 = 0.5;
a2 = 0.5;
b1 = 0.5;
b2 = 0.5;
T = 1;
p = 2;
d = 3;
 
u = (-a1.*x(1)+b1.*x(1).*x(2)+p.*a2.*x(2)-p.*b2.*x(1).*x(2)-(x(1)+p.*x(2)-d)./T);
f1 = (a1.*x(1)-b1.*x(1).*x(2)+u);
f2 = (-a2.*x(2)+b2.*x(1).*x(2));
 
out = [f1;f2];
end