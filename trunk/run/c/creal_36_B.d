// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-doop@kuehne.cn>
// @date@	2006-11-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=575
// @desc@	[Issue 575] New: wrong evaluation of (creal * 2 + 1i)

module dstress.run.c.creal_36_B;

int main(){
	if((1.0L + 2.0Li) * 2.0L + 1.0Li != 2.0L + 5.0Li){
		assert(0);
	}
	return 0;
}

