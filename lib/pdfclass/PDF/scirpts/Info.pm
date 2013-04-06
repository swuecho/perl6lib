use Roles;




class PDF::Info is rw does hashing {

    has Str $.Author = %*ENV<LOGNAME>;
    has Str $.Producer = 'perl6pdf';
    has Str $.Title;
    has Str $.Subject;
    has Str $.Keywords;
    has Str $.default;
# TODO: creation date
    has Instant $.CreationDate = now;


    }







}
