scr_directionsnap = function(argument0, argument1)
{
    var __angle = (360 / argument1)
    return (((argument0 + (__angle / 2)) % __angle) - (__angle / 2));
}
