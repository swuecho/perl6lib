class PDF::Object::String is rw does Stringy {
    has Str $.String;
 #TODO:need some convention of string!!
    my %escape =('n'=>"\n",
                 'r'=>"\r",
                 't'=>"\t",
                 'b'=>"\b",
                 'f'=>"\f",
                 '\\'=>"\\");

    sub convert ($x) { $x }

# not special character allowed at this moment
    method Stringy {
    '(' ~ convert($.String) ~')';
    }



}


my $st= PDF::Object::String.new(String => "pdf string");
say ~$st;
