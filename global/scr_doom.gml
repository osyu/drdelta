scr_doom = function(argument0, argument1)
{
    with (instance_create_depth(0, 0, 0, obj_doom))
    {
        alarm[0] = argument1
        target = argument0
    }
    return;
}
