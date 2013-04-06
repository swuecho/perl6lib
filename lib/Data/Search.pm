sub binary_Search($key,@xs) {
    
	my $lo = 0;
    	my $hi = @xs.end;

    	while $lo <= $hi {
		my $mid = (($hi + $lo) div 2); 
		if $key < @xs[$mid]  {
		    $hi = $mid - 1
		} elsif  $key > @xs[$mid] {
		    $lo = $mid + 1 
	        } else  {
		    return $mid 
	        }	
    	}
}	

my @xs = 1,3,4,6,8,12,24;
say binary_Search(8,@xs);

#always have white spaces between operators and operand.
