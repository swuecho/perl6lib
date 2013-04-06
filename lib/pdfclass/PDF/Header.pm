class PDF::Header is rw does Stringy {
    
    has Str $.Version = '1.7';

    method Stringy {
        '%PDF-' ~ $.Version ~ "\n";
    }
}


