#use 5.0120;

whileif;

sub whileif {
    my @a = 0..9;
    my $i = 0;
    while $i < 10 {
	my $a = @a[$i];
	say $a;
	if $a < 1 {
	    say "less than 1";
	} elsif $a > 1 {
	    say "greater than  1";
	} else { 
	    say "equal  1";
	}
	$i++;
    }
}


