
%% Question 1 (Linear Algebra)

clear all

x = randi([-10 10],3,3);
a = randi([-7 -3]);
b = randi([1 5]);
y = x(:,3);
x(:,3) = a * x(:,1)+b*x(:,2);
k1 = x(:,1);
k2 = x(:,2);
p = dotproduct(k1,k2);
k2 = k2 - (p/squarelength(k1))*k1;
k1 = k1/sqrt(squarelength(k1));
k2 = k2/sqrt(squarelength(k2));
answer = dotproduct(y,k1)*k1+dotproduct(y,k2)*k2;
optiona = (answer+y)/2;
optionc = y;
optiond = dotproduct(y,k1)*k2+dotproduct(y,k2)*k1;

disp('A vector v is called a least squares solution of the linear system Ax = B where A is a 3x3 matrix, B is a 3x1 vector, if and only if')
disp('the distance of B from Av is least i.e ||Av-B||<=||Az-B|| for all z ∈ R3x1. Find out the value of Av such that v is a least squares solution. ');
disp(' A ='); disp(x);disp(' B =');disp(y);
disp('(a)');disp(optiona);
disp('(b)');disp(answer);
disp('(c)');disp(optionc);
disp('(d)');disp(optiond);
disp('answer = (b)'),disp(answer)

function x = dotproduct(k1,k2)
x = k1(1)*k2(1)+k1(2)*k2(2)+k1(3)*k2(3);
end
function t = squarelength(x)
 t = x(1)^2 + x(2)^2 + x(3)^2;
end
