scr_tempsave = function()
{
    filechoicebk2 = global.filechoice
    global.filechoice = 9
    scr_saveprocess(global.filechoice)
    global.filechoice = filechoicebk2
    return;
}
