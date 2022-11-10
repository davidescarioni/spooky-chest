if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   camera_set_view_pos(camera, xCamera + _xval, yCamera + _yval); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(camera, xCamera, yCamera); 
         shake = false; 
      } 
   } 
}
