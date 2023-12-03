clc;
clear;

%first function:
x1 = -3:0.25:3;
y1 = 0:0.25:6;
[X1,Y1] = meshgrid(x1, y1); %meshgrid on x and y domain
F1 = (Y1.^(2.5)).*exp(-3*(X1.^2)+Y1); %f defenition
draw(X1, Y1, F1)

%second function
x2 = -7:0.25:7;
y2 = -5:0.25:5;
[X2,Y2] = meshgrid(x2, y2); %meshgrid on x and y domain
F2 = cos(2*X2).*sin(Y2); %f defenition
draw(X2, Y2, F2)

function draw(X, Y, F)
    %plot the mesh
    figure('Name','Mesh','NumberTitle','off'); %creates a new figure window named Mesh
    mesh(X,Y ,F)
    xlabel('x') % lable of x axis
    ylabel('y') % lable of y axis
    zlabel('f(x,y)') % lable of z axis
    %plot the contour
    figure('Name','Contour','NumberTitle','off'); %creates a new figure window named Contour
    contour(X ,Y ,F)
    xlabel('x')
    ylabel('y')
    zlabel('f(x,y)')
    %plot the surf
    figure('Name','Surf','NumberTitle','off'); %creates a new figure window named Surf
    surf(X ,Y ,F)
    xlabel('x')
    ylabel('y')
    zlabel('f(x,y)')
end    
