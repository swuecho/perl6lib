#= mutation

#multi deci_bin(

sub deci_bin($n) {
    return $n if $n==0 || $n==1;
    my $k = $n div 2;
    my $b = $n % 2;
    my $E = deci_bin($k);
    return $E~$b;
}

# $bin.comb Z+ (0,0,0,0,0,0,0,0)

#how to build a hash using two list.
my @keys=111,110,101,100,011,010,001,001;
my @vals=0,0,0,1,1,1,1,0;
my %rule= @keys Z, @vals;
    
my $initial=
sub automata($initial) {
    my @automata="0"x $row ~"1"~"0" x $row;
    for 1..$row {
    my $next="0";
    my $i=0
    repeat until $i= $initial.chars-3 {
	$next=$next~%rule{substr(@automata[*-1],$i,3)};
    }
    push @automata, $next;
    }
    say @automata;
}
=begin comment
sub deci_bin($deci) {
    my @bin;
    if $deci %% 2 {
	push @bin, 0;
    } else {
	push @bin, 1;
    }
    deci_bin($deci div 2);
}
=end comment
