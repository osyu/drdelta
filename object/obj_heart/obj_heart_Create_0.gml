global.sp = 4
wspeed = global.sp
image_speed = 0
fly = 0
darken = true
darkamt = 0
dmgnoise = false
chargeshot_sound = -1
canmove = 1
instance_create((x + 10), (y + 10), obj_grazebox)
boundaryup = 0
color = c_black
z_hold = 0
siner = 0
z_charge = 0
f = 2
z_hold_f = 0
chargeshot_delay = 0
superchargetimer = 0
chargeshotcount = 0
disableslow = 0
if button2_h()
    disableslow = 1
remove_slow_z_buffer = 40
