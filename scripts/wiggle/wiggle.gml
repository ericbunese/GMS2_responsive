///wiggle(k):[xscale,yscale]
var k = argument0, kf, af, ret;

if (k<1)
{
 kf=dsin(k*180)*0.1
 af=cosine(0,720,k)
 ret[0] = 1+dcos(af)*kf
 ret[1] = 1+dsin(af)*kf
} 
else
{
 ret[0] = 1
 ret[1] = 1
}

return ret
