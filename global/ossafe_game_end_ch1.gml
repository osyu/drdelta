ossafe_game_end_ch1 = function()
{
    if (!global.is_console)
        game_end()
    else
        game_restart_true()
    return;
}
