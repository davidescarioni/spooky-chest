function place_meeting_precise(xx, yy, obj) {
    for (var i = 0; i < speed; i+=.1) {
        if (place_meeting(xx + lengthdir_x(i, direction), yy + lengthdir_y(i, direction), obj))
            return true;
    }

    return false;
}