// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3881

module dstress.run.o.opDiv_09_B;

int main(){
	real a = -1.0Li / 0.0Li;

	ireal b = -1.0Li;
	ireal c = 0.0Li;
	real d;

	byte* X = cast(byte*) (cast(void*) &a);

	d = b/c;
	byte* Y = cast(byte*) (cast(void*) &d);

	for(int i=0; i<a.sizeof; i++){
		assert(X[i]==Y[i]);
	}

	return 0;
}
