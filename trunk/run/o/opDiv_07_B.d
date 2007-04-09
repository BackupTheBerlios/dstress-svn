// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-03
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3881

module dstress.run.o.opDiv_07_B;

int main(){
	float a = -1.0fi / 0.0fi;

	ifloat b = -1.0fi;
	ifloat c = 0.0fi;
	float d;

	void* X = &a;

	d = b/c;
	void* Y = &d;

	assert((cast(int*)X)[0]==(cast(int*)Y)[0]);
	return 0;
}
