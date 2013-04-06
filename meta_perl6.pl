#!/usr/bin/env perl6

# see:
# * http://transfixedbutnotdead.com/2010/01/13/anyone_for_metaprogramming/
# * http://transfixedbutnotdead.com/2010/01/14/anyone-for-perl-6-metaprogramming/
# * http://fingernailsinoatmeal.com/post/292301859/metaprogramming-ruby-vs-javascript
# * http://transfixedbutnotdead.com/2010/10/31/perl6-metaprogramming-update/

# below runs on Rakudo Star (2010.10 release).

use v6;
use MONKEY_TYPING;

class Ninja {
    has Str $.name is rw;
}

my Ninja $drew .= new( name => 'Drew' );
my Ninja $adam .= new( name => 'Adam' );


###########################################################
# Reopen Ninja class ("is also" does the biz) 
# and add 'battle_cry' method

augment class Ninja {
    method battle_cry {
        say $.name ~ ' says zing!!!'; 
    }
}

$drew.battle_cry;   # => Drew says zing!!!
$adam.battle_cry;   # => Adam says zing!!!


###########################################################
# add 'throw_star' method to $drew object by 
# applying ("does") role to it (Singleton method)

$drew does role {
    method throw_star { say "throwing star" }
};

$drew.throw_star;     # => throwing a star


###########################################################
# call method dynamically

$drew.'battle_cry'();     # => Drew says zing!!!


###########################################################
# add "colour" method closing over $colour_name (ie. closure):

my $colour_name = 'black';

augment class Ninja {
    method colour { say "{$.name}'s colour is $colour_name" }
}

$drew.colour;    # => Drew's colour is black
$adam.colour;    # => Adam's colour is black
 
 
###########################################################

# "defining a method dynamically on an instance that closes 
# over local scope and accesses the instance’s state"
#
# Opps - Class method slipped in while working it out.
# $drew.^add_method() does a singleton method.. nice!

my $sword_symbol = '********';

$drew.^add_method( 'swing', method ( Str $sound_effect ) { 
    say "$.name: $sword_symbol $sound_effect";
} );

$drew.swing( 'slash!!' );