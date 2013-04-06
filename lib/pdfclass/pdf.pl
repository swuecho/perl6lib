  # initialize PDF

my $pdf = PDF.new();
$pdf.info( 'Author'       => 'John Doe',
           'Title'        => 'Sample PDF',
           'CreationDate' => [ localtime ], );

my $contents1 = content.new();


my $page1 = Page.new(content => $contents1);

$pdf.add($page1);

my $contents2 = content.new();
my $toc2 = outlines.new();

my $page2 = Page.new(content => $contents2, outline =>  outlines.new());

$pdf.add($page2)


say ~$pdf;
