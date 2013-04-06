module PDF::Object;
##  object
class PDF::Object is rw does Stringy {
#       has $.counter
       has $.order;
       has $.generation = 0;
       has $.content;
       method Stringy {
       "{$.order} {$.generation} obj\n" ~
       "{$.content}\n" ~
       "endobj";

       }
       method size {
       self.Stringy.subst(/\s+/,'s',:g).chars
       }
}

## Boolean Object
## Numeric Object


## String Object



class PDF::Object::String is rw does Stringy {
    has Str $.String;
 #TODO:need some convention of string!!
    my %escape =('n'=>"\n",
                 'r'=>"\r",
                 't'=>"\t",
                 'b'=>"\b",
                 'f'=>"\f",
                 '\\'=>"\\");

    sub convert ($x) { $x }

# not special character allowed at this moment
    method Stringy {
    '(' ~ convert($.String) ~')';
    }

}

# name object

# array object

class PDF::Object::Array is rw does Stringy {
    has @.values;
# TODO: change the output format
    method Stringy {
     '['  ~  @.values.join(' ') ~ ']'
    }

}


## dictionary object

class PDF::Object::Dictionary is rw does Stringy {
    has %.dic;
# TODO: change the output format
    method Stringy1 {
    my @keys = %.dic.keys X~ ' ';
    my @values = %.dic.values X~ "\n";
    "<<\n" ~
      (@keys >>~<< @values)  ~
    ">>\n"
    }
# output string
   method Stringy {
   "<<\n" ~
   %.dic.kv.join(' ') ~ "\n" ~
   ">>\n"
}

}

## Stream Object

class PDF::Object::Stream is rw does Stringy{
    has PDF::Object::Dictionary $.dictionary;
    has $.bytes;

    method Stringy {
    ~$.dictionary ~
    "stream\n"~
    "{$.bytes}\n" ~
    "endstream\n;
    }



}
# null object

# indirect Object

class PDF::Object::Indirect is rw does Stringy {
    has Int $.order;
    has Int $.generation = 0;
    method Stringy {
    $.order ~ ' ' ~ $.generation ~' ' ~ 'R';

    }

}
