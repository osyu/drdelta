scr_revive = function(argument0)
{
    global.charmove[argument0] = true
    global.charcantarget[argument0] = true
    global.chardead[argument0] = false
    return;
}
