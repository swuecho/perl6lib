
class PDF::Text is rw does Stringy {

    has Str $.font = "/F13";
    has Int $.size = 12;
    has PDF::Object::String $.string;
    has Int $.x= 50;
    has Int $.y= 60;

    method Stringy {
        "BT\n"~
        "$.font " ~ "$.size " ~'Tf' ~ "\n" ~
        "$.x " ~ "$.y " ~'Td' ~ "\n" ~
        "$.string " ~'TJ' ~"\n" ~
        "ET\n"
    }

}



