clc;
clear;

x = -7:0.25:7;
y = -5:0.25:5;
[X,Y] = meshgrid(x, y); %meshgrid on x and y domain
F = cos(2*X).*sin(Y); %f defenition
draw(X, Y, F)

function draw(X, Y, F)
    %plot the mesh
    figure('Name','Mesh','NumberTitle','off'); %creates a new figure window named Mesh
    mesh(X,Y ,F)
    %plot the contour
    figure('Name','Contour','NumberTitle','off'); %creates a new figure window named Contour
    contour(X ,Y ,F)
    %plot the surf
    figure('Name','Surf','NumberTitle','off'); %creates a new figure window named Surf
    surf(X ,Y ,F)
    %plot the surf
    figure('Name','Plot3','NumberTitle','off'); %creates a new figure window named Surf
    plot3(X ,Y ,F)
end    
