my $in = open 'temp.txt',:r;
my $out = open 'out.txt',:w;
say $out, $in.lines.uniq ;
$in.close();
$out.close();
