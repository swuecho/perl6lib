sub MAIN ($file) {
    my $in=open $file;
#    my $out=open $file,:w;
    for $in.lines  ->$line {
#	say $line;
	if $line~~m/'<b>'(.*)'</b>'/ {
	    say "$/[0]";
	}
    }
}
