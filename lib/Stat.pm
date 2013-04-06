sub sum (@xs) { [+] @xs}

sub mean (@xs) { sum(@xs)/ +@xs }

sub var(@xs) {
    my $mean=mean(@xs);
    sum(map {($_ - $mean)**2}, @xs)/(+@xs -1);
}

sub sd(@xs) {
    sqrt(var(@xs));
}

sub frequency (@xs) {
    my %table;
    %table{$_}++ for @xs; # %table<$_> is not right
    %table;
}




