function [ errorRealApprox ] = obtain_error( distMin, distMax, numDist, angleMin, angleMax, numAngle )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
[ vRealMtx , vApproxMtx ] = obtain_v_Mtxs( distMin, distMax, numDist, angleMin, angleMax, numAngle );
[ angleRealMtx, angleApproxMtx ] = obtain_angle_Mtxs( vRealMtx, vApproxMtx );

errorRealApprox = angleRealMtx - angleApproxMtx;

end