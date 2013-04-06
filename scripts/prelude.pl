sub head(@xs) { @xs[0] }
sub last(@xs) { @xs[*-1] }
sub tail(@xs) { @xs[1..*-1] }
sub init(@xs) { @xs[0..*-2] }
sub null(@xs) { @xs==0 }
sub length(@x) { @x.elems }
sub foldl{}
sub foldl1{}
sub foldr{}
sub foldr1{}
sub sum(@xs) { [+]@xs}
sub product(@xs) { [*] @xs}
#sub concat
#sub maximum (@xs) { max @xs }
#sub minimum (@xs) { min @xs }
sub scanl{}
sub scanl1{}
sub scanr{}
sub scanr1{}
sub iterate{}
sub repeat{}
sub replicate{}
sub cycle{}
sub take{}
sub drop{}
sub splitAt{}
sub takeWhile{}
sub dropWhile{}
sub span{}
sub break{}
sub seq($x,$n) {
    my @xs;
    for 1..^$n -> $i {
	@xs[$i]=$x;
    }

