snd_init = function(argument0)
{
    initsongvar = ("mus/" + argument0)
    _mystream = audio_create_stream(initsongvar)
    _astream = instance_create(0, 0, obj_astream)
    _astream.mystream = _mystream
    _astream.songname = initsongvar
    return _mystream;
}
