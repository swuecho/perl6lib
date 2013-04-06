my $str=$*.IN.get;
say $str.subst(/',' <?before from>/,'\n', :g)
