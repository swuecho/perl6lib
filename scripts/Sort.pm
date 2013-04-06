sub less ($x,$y) {$x<$y}

sub is_sorted(@xs){
	my $i;
	loop (i=1;i<@xs.elems;i++) { @xs[i]<@xs[i-1] ?? "False" !! "True" }
}


my @a=1,4,6,4,3;
say is_sorted(@a);
=begin comment
merge_sort(@xs){};
insert_sort(@xs){};
bubble_sort(@xs){};
heap_sort(@xs){};
quick_sort(@xs){};
merge_sort(@xs){};
=end comment
