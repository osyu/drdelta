scr_marker = function(argument0, argument1, argument2)
{
    thismarker = instance_create(argument0, argument1, obj_marker)
    with (thismarker)
    {
        sprite_index = argument2
        image_speed = 0
    }
    return thismarker;
}
