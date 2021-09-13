scr_84_set_draw_font_ch1 = function(argument0)
{
    global.chemg_font = argument0
    draw_set_font(scr_84_get_font_ch1(argument0))
    return;
}
