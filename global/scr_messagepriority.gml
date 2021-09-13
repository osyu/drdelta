scr_messagepriority = function(argument0)
{
    if i_ex(obj_battlecontroller)
    {
        if (obj_battlecontroller.messagepriority < argument0)
        {
            obj_battlecontroller.messagepriority = argument0
            return 1;
        }
        else
            return 0;
    }
    else
        return 0;
}
