c_soundplay_wait = function(argument0)
{
    c_cmd("soundplay", argument0, 0, 0, 0)
    c_wait(round((audio_sound_length(argument0) * room_speed)))
    return;
}
