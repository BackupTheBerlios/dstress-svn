// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3881

module dstress.run.o.opDiv_08_A;

int main(){
	double a = -1.0 / 0.0;

	double b = -1.0;
	double c = 0.0;
	double d;

	void* X = &a;

	d = b/c;
	void* Y = &d;

	assert((cast(int*)X)[0]==(cast(int*)Y)[0]);
	assert((cast(int*)X)[1]==(cast(int*)Y)[1]);

	return 0;
}
