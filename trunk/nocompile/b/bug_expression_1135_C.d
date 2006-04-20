// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-04-19
// @rui@	news:bug-110-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 16

module dstress.nocompile.b.bug_expression_1135_C;

void * frog (void *);

void main () {
	void* toad = frog(0);
}
   
