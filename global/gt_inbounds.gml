gt_inbounds = function(argument0, argument1)
{
    return gt_inbounds_tol(argument0, argument1, 0);
}

gt_inbounds_tol = function(argument0, argument1, argument2)_tol
{
    return (argument0 >= (gt_minx - argument2) && argument0 <= (gt_maxx + argument2) && argument1 >= (gt_miny - argument2) && argument1 <= (gt_maxy + argument2));
}
