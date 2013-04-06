use v6;

sub sorted_keys(%map1,%map2) {

my @keys = %map1.keys, %map2.keys;

if @keys {join(",", @keys.uniq.sort) }
else  {"<none>"}
}

my %map1 = 1..6;
my %map2 = 3..10;

say sorted_keys(%map1,%map2);


















# vim: filetype=perl6:\n
