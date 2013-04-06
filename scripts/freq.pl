use v6;

# vocabulary processing

my $file = open 'history.txt';
my @lines = $file.lines;
say +@lines;
say +@lines.uniq;
my %commands:= bag @lines;
for @lines.uniq.sort({ -%commands{$_} })[^100] -> $command {
	say "$command: {%commands{$command}}";
}
# vi: filetype=perl6:

