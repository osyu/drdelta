ease_in_bounce = function(argument0, argument1, argument2, argument3)
{
    return ((argument2 - ease_out_bounce((argument3 - argument0), 0, argument2, argument3)) + argument1);
}
