// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3881

module dstress.run.o.opDiv_08_B;

int main(){
	double a = -1.0i / 0.0i;

	idouble b = -1.0i;
	idouble c = 0.0i;
	double d;

	void* X = &a;

	d = b/c;
	void* Y = &d;

	assert((cast(int*)X)[0]==(cast(int*)Y)[0]);
	assert((cast(int*)X)[1]==(cast(int*)Y)[1]);

	return 0;
}
