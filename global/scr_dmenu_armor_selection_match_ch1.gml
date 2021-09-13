scr_dmenu_armor_selection_match_ch1 = function()
{
    if (global.submenu == 13 && global.submenucoord[14] != global.submenucoord[13])
        global.submenucoord[14] = global.submenucoord[13]
    if (global.submenu == 14 && global.submenucoord[13] != global.submenucoord[14])
        global.submenucoord[13] = global.submenucoord[14]
    return;
}
