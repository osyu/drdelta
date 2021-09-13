snd_pause = function(argument0)
{
    if global.is_console
        snd_volume(argument0, 0, 0)
    audio_pause_sound(argument0)
    return;
}
