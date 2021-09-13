scr_84_set_draw_font = function(argument0)
{
    global.chemg_font = argument0
    draw_set_font(scr_84_get_font(argument0))
    return;
}
