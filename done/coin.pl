use v6;
# why not work?
my @values = 1,3,5;
my $sum = 111;

my @min;
# initilize @min 
@min[$_] = Inf for 0..$sum;
@min[0] = 0;

for 1..$sum -> $i {
	for @values -> $j {
		if  $j <= $i and @min[$i - $j] + 1 < @min[$i] {
			@min[$i] = @min[$i - $j] + 1	
		}	
	}
}
say @min;
=for comment 
my @min = 1..10;
for 1..10 -> $i { say @min[$i] }


















# vi: filetype=perl6:\n
