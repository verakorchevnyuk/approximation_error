function [  ] = represent_error( errorMtx , distVector, angleVector , rDist, rAngle )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
figure
subplot(1,3,1)
contour(angleVector, distVector, errorMtx);
xlabel ('angle (degrees)'); % x & y are switched !!
ylabel ('dist (m)');
zlabel ('error (degrees)');
title ( ' Variation with distance and angle');

% check variation with distance
subplot (1,3,2)
chosenAngle = round(length(errorMtx(:,1)) * rAngle) ;
plot ( distVector , errorMtx( : , chosenAngle ) ) ;
xlabel ( 'dist (m) ');
ylabel ('error (degrees)')
title (' variation with the distance' );


% check variation with angle
subplot (1,3,3)
chosenDist = round (length(errorMtx(1,:)) * rDist) ;
plot ( angleVector, errorMtx ( chosenDist , :)' ) ;
xlabel ( 'angle (degrees) ');
ylabel ('error (degrees)')
title (' variation with the angle' );

end

