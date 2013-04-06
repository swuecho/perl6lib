
sub lnzd1($n) {
 ([*] 1..$n).Str.subst(/0/,'', :g).substr(*-1)
}

sub lnzd_number($n ) {
    my $m = $n;
    while $m %% 10 {
          $m = $m / 10  
    }
    $m % 1000;
}

sub lnzd2($n) {
    
    sub helper( $x , $acc) {
#        say $x ~ '|' ~ $acc;
        if $x == $n { lnzd_number($acc * $x)  }
        else { helper($x+1,lnzd_number($acc * $x) ); }
    }

    helper(1,1) % 10;

}

say lnzd2(15);
for 1..1000 -> $n {
    my $a = lnzd1($n);
    my $b = lnzd2($n) ;
    say $n ~ ':' ~$a ~ '|' ~ $b if $a != $b;
}
