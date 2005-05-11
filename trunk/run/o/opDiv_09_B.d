// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-03
// @uri@	news:d595il$lqr$2@digitaldaemon.com

module dstress.run.o.opDiv_09_B;

int main(){
	ireal a = -1.0Li / 0.0Li;

	ireal b = -1.0Li;
	ireal c = 0.0Li;
	ireal d;

	byte* X = cast(byte*) (cast(void*) &a);

	d = b/c;
	byte* Y = cast(byte*) (cast(void*) &d);

	for(int i=0; i<a.sizeof; i++){
		assert(X[i]==Y[i]);
	}

	return 0;
}
