w = sprite_width
h = sprite_height
NOISE = snd_play_ch1(AUDIO_INTRONOISE_ch1)
siner = 0
factor = 1
factor2 = 0
factory = (h / 2)
mid = (h / 2)
x = ((__view_get((2 << 0), 0) / 2) - (w / 2))
y = (((__view_get((3 << 0), 0) / 2) - (h / 2)) - 10)
inity = y
PHASE = 0
PHASETIMER = 0
PHASEPLUS = 0
AA = 1
AB = 1
ingame = true
if (global.plot == 0)
    ingame = false
skipped = false
skiptimer = 0
room_speed = 15
draw_screen = true
