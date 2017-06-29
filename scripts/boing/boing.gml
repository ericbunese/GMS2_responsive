///boing(state,value,[strength,friction,max spring,max difference])
//if six arguments are supplied, it will return an array you use as state for further calls.
//otherwise it will return the spring value.

//example usage:
//b1 = boing(0,x,0.1,0.5,10,50)
//image_xscale = 1+boing(b1,x)/50
var a;
    
if (argument_count=6) { //init
    a[0]=argument[1] //lag value
    a[1]=0           //lag speed
    a[2]=argument[2]   //strength
    a[3]=argument[3]   //friction
    a[4]=argument[4]   //max spring
    a[5]=argument[5]   //max difference
    return a
}

a=argument[0]

a[@1]+=(argument[1]-a[@0])*a[@2]
a[@1]=median(0,abs(a[@1])-a[@3],a[@4])*sign(a[@1])
a[@0]=median(argument[1]-a[@5],a[@0]+a[@1],argument[1]+a[@5])

return argument[1]-a[@0]