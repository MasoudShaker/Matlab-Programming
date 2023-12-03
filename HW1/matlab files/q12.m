clc;
clear;
%works for all vectors with 2 or more dimensions

v1 = input('enter an n dimentional vector in the form of "[x y ...]" : ');
v2 = input('enter another vector : ');
v3 = input('enter the last vector : ');

%calculate size^2 of each vector
s1 = sum(v1.^2); %elementwise power of two and then summation of all elements
s2 = sum(v2.^2);
s3 = sum(v3.^2);

%angle between two vectors = cos-1( (u.v)/(||u||.||v||) )
%norm(v) is the vectors' euclidean distance from the origin
%acosd is inverse cosine in degrees
%abs is absolute value
%angle = abs( acosd(dot(u,v)/(norm(u)*norm(v)) );

if(s1 == 0 || s2 == 0 || s3 == 0)
    disp('invalid vectors! vector of size 0 is not acceptable');
elseif(s1 == s2)
    fprintf('the angle between v1 and v2 is : %f\n' , abs( acosd(dot(v1,v2)/(norm(v1)*norm(v2))) ));
elseif(s2 == s3)
    fprintf('the angle between v2 and v3 is : %f\n' , abs( acosd(dot(v2,v3)/(norm(v2)*norm(v3))) ));
elseif(s1 == s3)
    fprintf('the angle between v1 and v3 is : %f\n' , abs( acosd(dot(v1,v3)/(norm(v1)*norm(v3))) ));
else
    disp('no vectors with same size!');
end
