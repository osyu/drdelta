snd_volume = function(argument0, argument1, argument2)
{
    audio_sound_gain(argument0, argument1, ((argument2 * 1000) / fps))
    return;
}
