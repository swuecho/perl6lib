role hashing does Stringy {

## TODO:finish full
    method to_hash_full {
        my @atr=self.^attributes;
        map { .name.comb(/\w+/) , .get_value(self) }, @atr;
    }

    method to_hash {
    my @atr=self.^attributes;
    map { .name.comb(/\w+/) , .get_value(self) }, grep {.get_value(self)}, @atr;
       }
    method Stringy {
        "<<\n"~
         self.to_hash.join("\n") ~
         "\n>>\n"

                            }

}



class PDF::Info is rw  does hashing {

    has Str $.Author = %*ENV<LOGNAME>;
    has Str $.Producer = 'perl6pdf';
    has Str $.Title;
    has Str $.Subject;
    has Str $.Keywords;
    has Str $.default;
# TODO: creation date
    has Instant $.CreationDate = now;

}

my $pdfinfo = PDF::Info.new(Title => 'this is title',
                            Subject => 'Subject',
                            Keywords => 'keywords');
say ~$pdfinfo;
