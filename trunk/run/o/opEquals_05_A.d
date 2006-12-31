// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-08-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=288
// @desc@	[Issue 288] type of opEquals

module dstress.run.o.opEquals_05_A;

int main(){
	bool a = (new Object() == new Object());

	return 0;
}
