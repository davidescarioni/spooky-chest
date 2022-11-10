function ScreenShake(_time, _magnitude, _fade) {
   with (instance_create_depth(x, y, 0, oScreenShake)) {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}