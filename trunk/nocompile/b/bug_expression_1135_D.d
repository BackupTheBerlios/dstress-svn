// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-04-19
// @rui@	http://d.puremagic.com/issues/show_bug.cgi?id=110

// __DSTRESS_ELINE__ 16

module dstress.nocompile.b.bug_expression_1135_D;

void * frog (void *);

void main () {
	auto toad = frog(0);
}
   
