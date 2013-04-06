class PDF::Crossref is rw does Stringy {

    has Int @.position;

    sub ten_fmt(Int $x) {$x.fmt('%010d')}

    method Stringy {

    my @a = map {ten_fmt($_) ~ ' 00000 '~ 'n' }, @.position;
    "xref\n" ~
    "0" x 10 ~ ' 63355 f' ~ "\n" ~
    @a.join("\n");
    }
}
