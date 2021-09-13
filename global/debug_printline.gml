debug_printline = function(argument0, argument1)
{
    if scr_debug()
    {
        draw_set_font(fnt_small)
        draw_set_color(c_black)
        yy = (480 - (8 * argument1))
        xx = 2
        draw_set_color(c_white)
    }
    return;
}
