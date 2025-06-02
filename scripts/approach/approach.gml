/// Approach(start, end, shift);

/****************************************
 Increments a value by a given shift but 
 never beyond the end value
 ****************************************/
 
function approach(_start, _end, _shift) {
	if (_start < _end)
	    return min(_start + _shift, _end); 
	else
	    return max(_start - _shift, _end);
}

///@desc Uses lerp between two values, but _offset is added to the difference, making it easier to reach final value
function lerp_offset( _from, _to, _amount, _offset = 1 )
{
    var diff = _to - _from;
    var diff_sign = sign(diff);
    if diff_sign == 0
        return _to;
       
    diff *= diff_sign;
    return _from + diff_sign * min( (diff + _offset) * _amount, diff );
}