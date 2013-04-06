use v6;

sub npr_word($word) {
# too slow
	$word.chars == 8 and 
	$word ~~ m/a/ and 
	$word ~~ m/b/ and 
	$word ~~ m/c/ and 
	$word ~~ m/d/ and 
	$word ~~ m/e/ and 
	$word ~~ m/f/;
} 
sub MAIN($dict_file='/usr/share/dict/british-english') {
my @words = slurp($dict_file).words;
say grep { npr_word($_) }, @words;

}



















# vim: filetype=perl6:\n
