scr_pan = function(argument0, argument1, argument2)
{
    panner = instance_create(0, 0, obj_panner)
    panner.panmax = argument2
    panner.panx = argument0
    panner.pany = argument1
    return;
}
