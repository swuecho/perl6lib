module PDF::Object;

class PDF::Object::Array is rw does Stringy {
    has @.values;
# TODO: change the output format
    method Stringy {
     '['  ~  @.values.join(' ') ~ ']'
    }

}
