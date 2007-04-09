// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3881

module dstress.run.o.opDiv_09_A;

int main(){
	real a = -1.0L / 0.0L;

	real b = -1.0L;
	real c = 0.0L;
	real d;

	byte* X = cast(byte*) (cast(void*) &a);

	d = b/c;
	byte* Y = cast(byte*) (cast(void*) &d);

	for(int i=0; i<a.sizeof; i++){
		assert(X[i]==Y[i]);
	}

	return 0;
}
