use PDF::Object::Dictionary;
class PDF::Object::Stream is rw does Stringy {

    has PDF::Object::Dictionary $.dictionary;
    has $.bytes;

    method Stringy {
    ~$.dictionary ~
    "stream\n"~
    "{$.bytes}\n" ~
    "endstream\n";
    }



}


