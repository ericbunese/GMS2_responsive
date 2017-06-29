/// @desc Cosine Interpolation
/// @arg from
/// @arg to
/// @arg pos
var y1 = argument0 ; 
var y2 = argument1 ;
var mu = argument2 ;
var mu2 = (1-cos(mu*pi))/2;
 
return(y1*(1-mu2)+y2*mu2);