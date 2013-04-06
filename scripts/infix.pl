grammar bin_digits {
   #TODO: neglect blank in expression
   #DONE: use rule =regex {:rachet :s}, but between words space are manditory.
   #so 2 + 3 ad 2      + 3 is valid but 2+3 is not.
   #as a result, you must use space between words.
    token TOP {
     ^ <B> $
    }
    token B { <D>+}
    token D {
    $<digit> =	[0 | 1] 

    }


}

# how to get the value matched?
# how to evaluate the value?

# which character must quote? in which situation?
# Metacharacters are everything except Unicode letters or number or underscore.
# quote may be used to create atom.
my $str='11100011';
say $str;
$str=$str.subst(/\s+/, '', :g);
say $str;
my $result= bin_digits.parse($str);

say $result ?? " OK"  !! "Nothing";

my $string="";

for $result<B><D> -> $_ {
  say $_{'digit'};
  $string ~= $_<digit>;
}

say "x" x 10;

my @digits=$result<B><D>.map: {
   $_<digit>;
}
say @digits;
say "x" x 10;
say $string;


=begin comment

The regex {:ratchet ..} pattern is do common that is has its own shortcut:
token {...}

A token with the :sigspace modifier is a rule.

=end comment

