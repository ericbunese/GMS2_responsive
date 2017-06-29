/// @desc Evil Interpolation
/// @arg From
/// @arg To
/// @arg Weight
/// @arg Margin

var src=argument0;
var dest=argument1;
var weight=argument2;
var margin=argument3;

var k=(src*weight+dest+sign(dest-src)*margin)/(1+weight)-src;

return src+min(abs(dest-src),abs(k))*sign(k)