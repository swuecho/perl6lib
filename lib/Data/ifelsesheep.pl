sub forif(@sheep){
    for @sheep  -> $sheep { 
	if $sheep < 1 {
	    say "How boring";
	} elsif $sheep > 1 {
	    say "One lonely sheep";
	} else {
	    say "A herd, how lovely!";
	}
    }
}

# perl6 is White sensitive now
sub whileif(@sheep) {
    my $i = 0;
    while $i < 10 {
	my $sheep = @sheep[$i];
	if $sheep < 1 {
	    say "How boring";
	} elsif $sheep > 1 { 
	    say "One lonely sheep";
	} else {
	    say "A herd, how lovely!";
	}
	$i++;
    }
}

my @a=1..10;
forif(@a);
say "x" x 10;
whileif(@a);
