# back and forth ?
my %rom2num=
	I => 1,
	V => 5,	
	X => 10,
	L => 50,
	C => 100,
	D => 500,
	M => 1000;

sub decimal($roman){
	my $deci=0;
	for $roman.comb -> $a,$b {
		if defined $b {
			if %rom2num{$a}<%rom2num{$b} {
				$deci=$deci+(%rom2num{$b}-%rom2num{$a});
			} else {
		        	$deci=$deci+%rom2num{$a}+%rom2num{$b} ;
			}	
		} else {
			$deci+=%rom2num{$a};
		}
	}	
	return $deci;
}	

say decimal("XX");
say decimal("CM");
say decimal("VIII");
