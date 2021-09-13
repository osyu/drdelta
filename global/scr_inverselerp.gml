scr_inverselerp = function(argument0, argument1, argument2)
{
    if (argument1 == argument0)
        return 0;
    return ((argument2 - argument0) / (argument1 - argument0));
}
