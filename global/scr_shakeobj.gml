scr_shakeobj = function()
{
    shakeobj = instance_create(x, y, obj_shakeobj)
    shakeobj.target = id
    with (shakeobj)
        event_user(0)
    return;
}
