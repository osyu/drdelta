snd_play_pitch = function(argument0, argument1)
{
    var _mysnd = audio_play_sound(argument0, 50, false)
    snd_pitch(_mysnd, argument1)
    return _mysnd;
}
