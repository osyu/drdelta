scr_charcan = function(argument0)
{
    charcan = true
    if (global.hp[global.char[argument0]] <= 0)
        charcan = false
    if (global.acting[argument0] == true)
        charcan = false
    if (global.char[argument0] == 0)
        charcan = false
    if (global.charmove[argument0] == false)
        charcan = false
    if (global.charauto[global.char[argument0]] == true)
        charcan = false
    return charcan;
}