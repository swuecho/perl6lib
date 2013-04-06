class PDF::Header is rw does Stringy {
    
    has Str $.Version = '1.7';

    method Stringy {
        '%PDF-' ~ $.Version ~ "\n";
    }
}

my PDF::Header $header .= new: Version => '1.7';
say ~$header;
my $head =PDF::Header.new( Version => '1.4');
say ~$head;
