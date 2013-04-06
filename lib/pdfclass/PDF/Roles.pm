module Roles;
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
