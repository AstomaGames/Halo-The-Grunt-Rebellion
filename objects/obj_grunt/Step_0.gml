if (instance_exists(obj_chief))
{
	move_towards_point(obj_chief.x,obj_chief.y,spd)
}

image_angle = direction

if (hp <= 0)
{
	with (obj_score) gscore = gscore + 5
	audio_sound_pitch(snd_enemydeath,random_range(1,1.3))
	audio_play_sound(snd_enemydeath,0,0)
	instance_destroy()
}