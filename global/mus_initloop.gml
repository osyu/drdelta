mus_initloop = function(argument0)
{
    global.currentsong[0] = snd_init(argument0)
    global.currentsong[1] = mus_loop(global.currentsong[0])
    return;
}
