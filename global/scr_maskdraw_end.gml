scr_maskdraw_end = function()
{
    gpu_set_alphatestenable(0)
    gpu_set_blendmode(bm_normal)
    return;
}
