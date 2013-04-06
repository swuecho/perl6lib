use v6;
use LWP::Simple;
#my $base1 = 'http://irclog.perlgeek.de/text.pl?channel=perl6;date=2013-01-11';
my $base ='www.google.com';
my $html = LWP::Simple.get($base);
say $html;


















# vi: filetype=perl6:\n
