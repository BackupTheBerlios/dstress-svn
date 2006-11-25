// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-doop@kuehne.cn>
// @date@	2006-11-19
// @uri@	news:bug-575-31@http.d.puremagic.com/issues/
// @desc@	[Issue 575] New: wrong evaluation of (creal * 2 + 1i)

module dstress.run.c.creal_36_A;

creal foo(creal a){
	return a * 2.0L + 1.0Li;
}

int main(){
	if(foo(1.0L + 2.0Li) != 2.0L + 5.0Li){
		assert(0);
	}
	return 0;
}

