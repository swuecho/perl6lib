use v6;
sub expovariate($lambda) {
	- log(1-rand)/$lambda
}

say expovariate(1);



















# vim: filetype=perl6:\n
