/// Animate Button

if (animationState > 0)
{
 var w = wiggle(animationState);
 animationState -=0.1
	image_xscale = w[0]*scalex
	image_yscale = w[1]*scaley
}
else
{
 image_xscale = scalex
	image_yscale = scaley
	animationState = 0
}