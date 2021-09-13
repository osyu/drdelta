mus_loop_ext = function(argument0, argument1, argument2)
{
    snd_volume(argument0, (argument1 * global.flag[16]), 0)
    snd_pitch(argument0, argument2)
    return mus_loop(argument0);
}
