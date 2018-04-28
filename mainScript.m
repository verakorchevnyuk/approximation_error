distMin = 0.2 ;
distMax = 2 ;
numDist = 5 ;
angleMin = 0 ;
angleMax = 360 ; 
numAngle = 10 ;

[ errorRealApprox ] = obtain_error( distMin, distMax, numDist, angleMin, angleMax, numAngle );


distVector = linspace ( distMin, distMax, numDist );
angleVector = linspace ( angleMin, angleMax, numAngle );
represent_error ( errorRealApprox, distVector, angleVector, 0.2, 0.5 );