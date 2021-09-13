scr_tensionheal = function(argument0)
{
    global.tension += argument0
    if (global.tension > global.maxtension)
        global.tension = global.maxtension
    return;
}
