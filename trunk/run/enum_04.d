// $HeadURL$
// $Date$
// $Author$

module dstress.run.enum_04;

enum : byte {
	BYTE
};

enum : short {
	SHORT
}

enum : int {
	INT
}

enum : long {
	LONG
}

int main(){
	assert(BYTE.sizeof == byte.sizeof);
	assert(SHORT.sizeof == short.sizeof);
	assert(INT.sizeof == int.sizeof);
	assert(LONG.sizeof == long.sizeof);
	return 0;
}
