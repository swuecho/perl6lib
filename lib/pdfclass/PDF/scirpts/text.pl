
class PDF::Object::String  does Stringy {
    has Str $.String;
 #TODO:need some convention of string!!
    my %escape =('n'=>"\n",
                 'r'=>"\r",
                 't'=>"\t",
                 'b'=>"\b",o
                 'f'=>"\f",
                 '\\'=>"\\");

    sub convert ($x) { $x }

# not special character allowed at this moment
    method Stringy {
    '(' ~ convert($.String) ~')';
    }
}o
class PDF::Text does Stringy {

    has Str $.font = "/F13";
    has Int $.size = 12;
    has  PDF::Object::String $.string;
    has Int $.x;
    has Int $.y;

    method Stringy {
        "BT\n"~
        "$.font " ~ "$.size " ~'Tf' ~ "\n" ~
        "$.x " ~ "$.y " ~'Td' ~ "\n" ~
        "$.string " ~'TJ' ~"\n" ~
        "ET\n"
    }

}








my $st= PDF::Object::String.new(String => "pdf string");
say ~$st;

my $txt = PDF::Text.new( string => $st, x => 20, y => 100);

say ~$txt;
