use PDF::Header;
use PDF::Body;
use PDF::Crossref;
use PDF::Trailer;
use PDF::Object;
use PDF::Text;


class PDF does Stringy {

    has PDF::Header    $.header;
    has PDF::Object    @.objects;
    has PDF::Crossref  $.xref;
    has PDF::Tailer    $.trailer;
    my @posions = find_position(@objects);
    $.xref = PDF::Crossref.new(position => @positions);

    method Stringy {
     "$.header"~ @objects.join("\n") ~ $.xref ~ $.trailer;
    }
}
