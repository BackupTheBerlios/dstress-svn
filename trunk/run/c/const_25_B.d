// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.const_25_B;

class C{
	const x = 4;
}

int main(){
	if(typeid(typeof(C.x)).toString() != "int"){
		assert(0);
	}

	return 0;
}
