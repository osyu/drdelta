scr_stickto_stop = function()
{
    if variable_instance_exists(id, "_stickto")
    {
        with (_stickto)
            instance_destroy()
    }
    return;
}
