# use v5.14;

my $a = qq:to/EOF/;
This is a multiline here document                                               
terminated by EOF on a line by itself                                           
EOF

say $a;     
