class PDF::Catalog is rw does Stringy {


    has Str $.Version = '1.7';
    has PDF::Object::Indirect $.Pages;
# can be change to other value
    has Str $.PageLayout ='SinglePage';
# can be change to other value
    has Str $.PageMode = 'UseNone';
    has PDF::Object::Indirect $.Outlines;

    method Stringy {
        "<<\n"~
        "/Type /Catalog\n" ~
        "/Version ({$.Version}) \n" ~
        "/PageLayout ({$.PageLayout}) \n" ~
        "/PageMode ({$.PageMode})\n" ~
        "/Outlines ({$.Outlines})\n" ~
        ">>\n"

    }
}
