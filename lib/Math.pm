=head1 Math

=head2 Combinartorics


#=  x!=factorial x
sub postfix:<!> {[*] 1..$^n}

#= k-permutation of N
sub Pnk(Int $n, Int $k) {[*] $n-$k+1..$n}

#=  get the all possible permutation
sub permutation(@xs,$num) {+@xs-$num}



