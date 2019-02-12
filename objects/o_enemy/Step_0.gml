/// @description Insert description here
// You can write your code in this editor

if (instance_exists(o_player)) {
  move_towards_point(o_player.x, o_player.y, mvSpeed);
}

image_angle = direction;

if (hp <= 0) {
  with(o_score) {
    thescore += 5;
  }
  audio_sound_pitch(snd_death,random_range(0.8,1.2));
  audio_play_sound(snd_death,0,false);
  instance_destroy();
}