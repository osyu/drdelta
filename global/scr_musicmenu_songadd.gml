scr_musicmenu_songadd = function(argument0, argument1)
{
    songOgg[songCount] = argument0
    songName[songCount] = ((string((songCount + 1)) + " - ") + argument1)
    songCount++
    return;
}
