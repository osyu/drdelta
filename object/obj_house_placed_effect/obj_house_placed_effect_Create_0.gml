sprite_index = choose(2075, 2076)
image_speed = (0.4 + random(-0.1))
image_xscale = (random_range(0.9, 1) * choose(-1, 1))
image_yscale = (image_xscale * choose(-1, 1))
direction = (90 + random_range(-45, 15))
speed = random_range(0.1, 1.5)
image_angle = random(360)
image_alpha = (random(0.9) + 0.1)
scalerX = (random(0.03) * image_xscale)
scalerY = (random(0.03) * image_yscale)
depth = -1000
image_index = 1
