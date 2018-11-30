//Move
if (keyboard_check(ord("D"))) x=x+7
if (keyboard_check(ord("A"))) x=x-7
if (keyboard_check(ord("W"))) y=y-7
if (keyboard_check(ord("S"))) y=y+7
image_angle=point_direction(x,y,mouse_x,mouse_y)
//Shoot
if (mouse_check_button(mb_left)) && (cooldown < 1) && (highcalactive = false)
{
	instance_create_layer(x,y,"AR_Bullets",obj_bullet)
	audio_sound_pitch(snd_shot,random_range(1,1.1))
	audio_play_sound(snd_shot,0,0)
	cooldown = 2
}

if (mouse_check_button(mb_left)) && (highcalactive = true)
{
	instance_create_layer(x,y,"HighCalBullets",obj_highcalbullet)
	audio_sound_pitch(snd_highcal,random_range(1,1.1))
	audio_play_sound(snd_highcal,0,0)
	cooldown = 3
}

cooldown = cooldown - 1