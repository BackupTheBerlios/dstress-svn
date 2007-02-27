// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-12-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=763
// @desc@	[Issue 763] Segfault compiling template code on Linux

module /*dstress.*/compile.t.template_55_A;

struct IsEqual( T ){
	bool opCall( ){
		return p1 = p2;
	}
}

size_t bar( Elem, Pred = IsEqual!(Elem) )(){
	return 0;
}

template find( Buf ){
	void find(){
		bar!(typeof(Buf[0]))();
	}
}
