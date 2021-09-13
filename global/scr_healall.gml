scr_healall = function(argument0)
{
    for (i = 0; i < 3; i += 1)
    {
        if (global.char[i] != 0)
            scr_heal(i, argument0)
    }
    return;
}
