event_inherited();

var _cell_x = floor(x / 32);
var _cell_y = floor(y / 32);
        
if (_cell_x != last_cell_x || _cell_y != last_cell_y) {
    var _block_x = _cell_x * 32 + 16;
    var _block_y = _cell_y * 32 + 16;
        
    if (!position_meeting(_block_x, _block_y, obj_slime_block_timer) && !position_meeting(_block_x, _block_y, obj_slime_block)) {
        instance_create_layer(_block_x, _block_y, "Instances", obj_slime_block_timer);
    }
        
    last_cell_x = _cell_x;
    last_cell_y = _cell_y;
}
