sub even($num) {
    $num%2==0
}
sub find(&is,@xs) {
    if @xs==0 {
	return False
    } else {
	$first=@xs[0]
	    if is($first) {return $first}
	else 
	{ return find (&is,@xs[1..])}
            }
}
