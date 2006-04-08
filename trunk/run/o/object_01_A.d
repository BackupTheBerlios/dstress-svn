// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-04-09
// @uri@	news:bug-94-3@http.d.puremagic.com/bugzilla/

module dstress.run.o.object_01_A;

class Object{
	int someVar;
}

int main(){
	dstress.run.o.object_01_A.Object o = new dstress.run.o.object_01_A.Object();

	assert(o);

	o.someVar = 2;

	if(o.someVar != 2){
		assert(0);
	}

	return 0;
}
