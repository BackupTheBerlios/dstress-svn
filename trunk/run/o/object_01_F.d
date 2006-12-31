// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-04-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=91

module dstress.run.o.object_01_F;

class Object{
	int someVar;
}

int main(){
	auto o = new Object();

	assert(o);

	o.someVar = 2;

	if(o.someVar != 2){
		assert(0);
	}

	return 0;
}
