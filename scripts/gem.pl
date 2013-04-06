use v6;
my @fibonacci = 1, 1, { $^a + $^b } ... *;

say @fibonacci[11];

===========

use v6;

my $age = 42;

if $age > 18 {
    say "Above 18";
} else {
    say "Below 18";
}

say $age > 18 ?? "Above 18" !! "Below 18";






if COND and COND {
 }
 
 if COND or COND {
 }
 
 if not COND {
 }

Chained comparisons

if 0 <= $small <= $a <= $big <= 100 {
    say "good";
} else {
    say "something is fishy";
}


#!/usr/bin/env perl6
use v6;

my $a        = prompt "Number:";
my $operator = prompt "Operator: [+-*/]:";
my $b        = prompt "Number:";

given $operator {
    when "+" { say $a + $b; }
    when "-" { say $a - $b; }
    when "*" { say $a * $b; }
    when "/" { say $a / $b; }
    default  { say "Invalid operator $operator"; }
}

index

#!/usr/bin/env perl6
use v6;

my $s = "The black cat jumped from the green tree";

say index $s, "e";                          # 2
say index $s, "e", 3;                       # 18

say rindex $s, "e";                         # 39
say rindex $s, "e", 38;                     # 38
say rindex $s, "e", 37;                     # 33


==========
lambda
sub range-expansion (Str $range-description) {
    my $range-pattern = rx/ ( '-'? \d+ ) '-' ( '-'? \d+) /;
    my &expand = -> $term { $term ~~ $range-pattern ?? +$0..+$1 !! $term };
    return $range-description.split(',').map(&expand)
}
 
say range-expansion('-6,-3--1,3-5,7-11,14,15,17-20').join(', ');
