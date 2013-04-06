
# perl6 subrotine.
sub sum {

    my $sum;

    for @_ -> $number {

        $sum += $number;

    }

    return $sum;

}

say sum(1,2,3);

macro twice {

    return "for 1..2";

}







print "\n" twice; 
