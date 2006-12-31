// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-08-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=288
// @desc@	[Issue 288] type of opEquals

module dstress.run.o.opEquals_05_D;

class C{
	bool opEquals(Object o){
		byte* a = cast(byte*) cast(void*) this;
		byte* b = cast(byte*) cast(void*) o;

		return a[0 .. C.sizeof] == b[0 .. C.sizeof];
	}
}

int main(){
	bool a = (new C() != new C());

	return 0;
}
