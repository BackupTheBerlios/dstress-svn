// $HeadURL$
// $Date$
// $Author$

// @author@	Brad Anderson <brad@dsource.org>
// @date@	2006-03-12
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=41
// @desc@	[Issue 41] md5.d compilation error with enable checking

module dstress.run.p.pointer_03_B;

int main(){
	byte[] input = new byte[1];
	void *b = &input[0];

	return 0;
}

