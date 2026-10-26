var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (state == gameState.idle && 
    !point_in_rectangle(_mx, _my, spr_restart_x_start, spr_restart_y_start, spr_restart_x_end, spr_restart_y_end) && 
    !point_in_rectangle(_mx, _my, spr_menu_x_start, spr_menu_y_start, spr_menu_x_end, spr_menu_y_end)) {
    var cam = camera
    
    // Centro della view in room coordinates
    var cx = camera_get_view_x(cam) + camera_get_view_width(cam) / 2;
    var cy = camera_get_view_y(cam) + camera_get_view_height(cam) / 2;
    
    // Usa mouse_x / mouse_y (room/world coords)
    var mx = mouse_x;
    var my = mouse_y;
    
    // offset dal centro view
    var dx = mx - cx;
    var dy = my - cy;
    
    // angolo della camera (gradi)
    var angle = camera_get_view_angle(cam);
    
    // ruotare il vettore (annullare la rotazione della camera)
    // poiché vogliamo ruotare di -angle, usiamo dcos(-angle), dsin(-angle)
    var rx = dx * dcos(-angle) - dy * dsin(-angle);
    var ry = dx * dsin(-angle) + dy * dcos(-angle);
    
    // controllo sinistra/destra rispetto al centro dello schermo
    if (rx < 0) {
        rotation = rotationDir.left;
    } else {
        rotation = rotationDir.right;
    }
}