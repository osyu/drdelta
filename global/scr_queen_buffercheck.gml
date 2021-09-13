scr_queen_buffercheck = function()
{
    return (instance_exists(obj_queen_buffercontroller) && obj_queen_buffercontroller.buffering == 1);
}
