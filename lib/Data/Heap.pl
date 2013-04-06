
# sth wrong
# study python's implementation # do not implement it as a class
# 
    sub parent($i) { $i div 2}
    
    sub left($i) { $i*2}
    
    sub right($i) { $i*2+1}

    sub max_heapify(@hp,$i){
	my ($l,$r,$max);
	my $size=@hp.elems;
	$l=left($i);
	$r=right($i);

	if $l<=$size and @hp[$l] > @hp[$i]; {
	    $max=$l;
	} else {
	    $max=Si;
	}

	if $r<=$size and @hp[$l]>@hp[$max] {
	    $max=$r;
	} 

	if $max!==$i {
	    (@hp[$max],@hp[$i])=@hp[$i],@hp[$max];
	    max_heapity(@hp,$max);
	}
    }

    sub build_max_heap(@hp) {
	my $i=@hp.elems div 2 
	repeat {
	    max_heapify(@hp,$i);
	    $i=$i-1;
	} until $i==1 # be careful about the terminal conditon

    }

    sub heappop(){
	pop @.heap;
    }

    sub heappush($item){
	push @.heap,$item;
	max_heapify(@.heap,@.heap.elems -1);
    }    

    sub heap_sort(@xs){
	build_max_heap(@xs);
#TODO	...
    }

    sub maximum(){
	build_max_heap(@.heap);
	@.heap[1];
    }


my @xs=1,20,3,8,74,4;
$heap=Heap.new(@heap=>@xs);
say $heap.maximum;



