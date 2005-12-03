// $HeadURL$
// $Date$
// $Author$

module dstress.run.enum_38;

enum E{
	A = 1
}

const E e;

enum Enum : E {
	B = e
}

int main(){
	assert(Enum.B==E.A);
	return 0;
}
