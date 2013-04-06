class PDF::Trailer does Stringy {
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
}


