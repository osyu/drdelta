snd_play_volume = function(argument0, argument1)
{
    var _mysnd = audio_play_sound(argument0, 50, false)
    snd_volume(_mysnd, argument1, 0)
    return _mysnd;
}
