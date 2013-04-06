grammar URL {
        token TOP {
            <schema> '://' 
            [<ip> | <hostname> ]
            [ ':' <port>]?
            '/' <path>?
        }
       
        token ip {
            <byte> [\. <byte> ] ** 3
        }
	token byte {
            \d+
        }
#something wrong with byte
        token schema {
            \w+
        }
        token hostname {
            (\w+) ( \. \w+ )*
        }
        token port {
            \d+
        }
        token path {
            <[ a..z A..Z 0..9 \-_.!~*'():@&=+$,/ ]>+
        }
    }
my $match = URL.parse('http://perl6.org/documentation/');
say $match<hostname>;       # perl6.org
say $match<schema>;
say $match<path>;
