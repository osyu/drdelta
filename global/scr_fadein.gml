scr_fadein = function(argument0)
{
    __fadeouter = instance_create(0, 0, obj_fadein)
    __fadeouter.fadespeed = (-1 / argument0)
    __fadeouter.depth = 3
    return __fadeouter;
}
