grammar simple_math {
   #TODO: neglect blank in expression
   #DONE: use rule =regex {:rachet :s}, but between words space are manditory.
   #so 2 + 3 ad 2      + 3 is valid but 2+3 is not.
   #as a result, you must use space between words.
    token TOP {
     ^ <expr> $
    }
    token expr {
	[<term> '+' <term> | <term> '-' <term> | <term> ]
    }
    # the order of <term> |<expr> +<term>|<expr> -<term>
    token  term  {
	[ <factor> '*' <factor> | <factor> '/' <factor> | <factor> ]
    }
    token  factor   {
	[<number> | '(' <expr> ')']
    }
    token number   {
	[0|<[1..9]><[0..9]>*]
    }
}

# how to get the value matched?
# how to evaluate the value?

# which character must quote? in which situation?
# Metacharacters are everything except Unicode letters or number or underscore.
# quote may be used to create atom.
my $str='(2+1)*5';
say $str;
$str=$str.subst(/\s+/, '', :g);
say $str;
my $result=simple_math.parse($str);
say $result;


say $result ?? " OK"  !! "Nothing";
=begin comment

The regex {:ratchet ..} pattern is do common that is has its own shortcut:
token {...}

A token with the :sigspace modifier is a rule.

=end comment

