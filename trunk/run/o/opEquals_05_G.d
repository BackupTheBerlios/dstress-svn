// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-08-15
// @uri@	news:bug-288-3@http.d.puremagic.com/issues/
// @desc@	[Issue 288] type of opEquals

module dstress.run.o.opEquals_05_G;

int main(char[][] args){
	bool a = (args.length != args[0].length);

	return 0;
}
