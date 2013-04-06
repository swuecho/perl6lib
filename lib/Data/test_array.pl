my @xs;
for 1..1e5 -> $i {
unshift @xs, $i;  
}

say ([+] @xs);
