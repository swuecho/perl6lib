class PDF::Object::Indirect is rw does Stringy {
    has Int $.order;
    has Int $.generation = 0;
    method Stringy {
    $.order ~ ' ' ~ $.generation ~' ' ~ 'R';

    }

}

