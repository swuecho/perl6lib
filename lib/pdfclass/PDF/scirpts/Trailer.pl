use lib '.';
use PDF::Object::Indirect;
class PDF::Trailer is rw does Stringy {
        has Int  $.Size;
        has PDF::Object::Indirect $.Root;
        has PDF::Object::Indirect  $.Info;
        has Int  $.offset; #Byte_offset_of_last_crossref_section;
        method Stringy {
            "trailer\n"~
            "<<\n" ~
            "/Size $.Size \n" ~
            "/Root $.Root \n" ~
            "/Info $.Info\n" ~
            ">>\n" ~
            "startxref\n" ~
            $.offset ~ "\n" ~
            '%%EOF';
        }

#        multi method Str(PDF::Trailer:D:) { self.Size ~ self.Root ~ self.Info }
}

my $Root = PDF::Object::Indirect.new(order=> 2);

my $Info = PDF::Object::Indirect.new(order=> 6);

my $trailer = PDF::Trailer.new(Size => 9,
                               Root => $Root,
                               Info => $Info,
                              offset => 200);
say "$trailer";
