my @a=1..10;
for @a -> $x is rw {
    $x=$x*2
}

say @a;       # 2,4,6..20
