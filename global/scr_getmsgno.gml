scr_getmsgno = function()
{
    if instance_exists(obj_writer)
        return obj_writer.msgno;
    return;
}
