mus_fade = function(argument0, argument1)
{
    audio_sound_gain(argument0, 0, ((argument1 * 1000) / fps))
    return;
}
