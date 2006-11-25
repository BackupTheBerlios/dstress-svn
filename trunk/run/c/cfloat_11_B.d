// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-doop@kuehne.cn>
// @date@	2006-11-19
// @uri@	news:bug-575-31@http.d.puremagic.com/issues/
// @desc@	[Issue 575] New: wrong evaluation of (creal * 2 + 1i)

module dstress.run.c.cfloat_11_B;

int main(){
	if((1.0f + 2.0fi) * 2.0f + 1.0fi != 2.0f + 5.0fi){
		assert(0);
	}
	return 0;
}

