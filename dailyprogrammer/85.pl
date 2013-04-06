my $matrix= open 'matrix_85.txt';
my @matrix= map {[.words]}, $matrix.lines;
# why []? is () ok?
say @matrix.elems;
say @matrix;
say map {[+] $_},@matrix;



