// $HeadURL$
// $Date$
// $Author$

module dstress.run.c.const_25_A;

class C{
	const x = 4.0;
}

int main(){
	assert(typeid(typeof(C.x)).toString() == "double");
	
	return 0;
}
