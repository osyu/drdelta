scr_fx_housesquare = function(argument0, argument1, argument2)
{
    var gr = obj_sneo_friedpipis
    for (i = 0; i < 3; i++)
    {
        gr = instance_create(argument0, argument1, obj_fx_growsquare)
        gr.color = argument2
        gr.alarm[0] = (1 + (i * 3))
        gr.depth = (depth - 10)
    }
    return;
}
