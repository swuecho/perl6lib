my $phone =qq{ 05 4 - 1 234567};

if $phone ~~ m/:s \d \- \d / {
    say "There are two numbers and a hyphen";
}

# or put in quotes:
if $phone ~~ m/:s  \d '-' \d / {
    say "Still two numbers and a hypen";
}
