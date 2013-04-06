# control structure
sub test1 {
    my @a=1..5;
    my $i=0;
    while  $i<10 {
	my $a=@a.pick;
	say $a;
	if $a<1 {
	    say "less than 1";
	} elsif $a>1 {
	    say "greater than  1";
	} else {
	    say "equal  1";
	}
	$i++
    }
}


sub test2 {
    my @a=1..5;
    my $i=0;
    while  $i<10 {
	my $a=@a.pick;
	say $a;
	if $a<1 {
	    say "less than 1";
	} elsif $a==1 {
	    say "equal 1";
	} else {
	    say "greater  1";
	}
	$i++
    }
}


# test
# this is an strange point
# test1;
#missing block at line 8;
test2
