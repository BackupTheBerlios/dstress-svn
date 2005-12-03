// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.const_25_B;

class C{
	const x = 4;
}

int main(){
	assert(typeid(typeof(C.x)).toString() == "int");
	
	return 0;
}
