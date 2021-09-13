mus_play = function(argument0)
{
    _xsndinstance = audio_play_sound(argument0, 90, false)
    snd_volume(_xsndinstance, global.flag[16], 0)
    return _xsndinstance;
}
