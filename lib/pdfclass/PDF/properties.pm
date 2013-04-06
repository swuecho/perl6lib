module PDF::Properties;
use Roles;

class PDF::Info is rw does hashing {

    has Str $.Type  = "Info";
    has Str $.Author = %*ENV<LOGNAME>;
    has Str $.Producer = 'perl6pdf';
    has Str $.Title;
    has Str $.Subject;
    has Str $.Keywords;
# TODO: creation date
    has Instant $.CreationDate = now;

}


class PDF::Catalog is rw does hashing {

    has Str $.Type  = "/Catalog";
    has Str $.Version = "1.7";
    has Str $.Pages;
    has Str $.PageLayout;
    has Str $.PageMode;
    has Str $.Outlines;
}
class PDF::PageTree does hashing {

    has PDF::Object::Indirect $.Parent;
    has PDF::Object::Indirect $.Kids;
    has Int $.Count;

}

class PDF::Pages is rw does hashing {

    has Str $.Type  = "Pages";
    has Str $.Parent;
    has Str $.Kids;
    has Str $.Count;

}


class PDF::Page is rw does hashing {

    has Str $.Type  = "Page";
    has Str $.Parent;
    has Str $.Resources;
    has Str $.MediaBox;
    has Str $.Contents;
}

class PDF::Contents is rw does hashing {

    has Str $.Type  = "Contents";
    has Str $.Parent;
    has Str $.Resources;
    has Str $.MediaBox;
    has Str $.Contents;
}


class PDF::Resources is rw does hashing {

    has Str $.Type  = "Resources";
    has Str $.Parent;
    has Str $.Resources;
    has Str $.MediaBox;
    has Str $.Contents;
}
