scr_ini_chapter = function(argument0, argument1)
{
    if (argument0 >= 2)
        return ((("G_" + string(argument0)) + "_") + string(argument1));
    else
        return ("G" + string(argument1));
}
