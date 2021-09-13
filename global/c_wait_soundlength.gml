c_wait_soundlength = function(argument0)
{
    c_wait(round((audio_sound_length(argument0) * room_speed)))
    return;
}
