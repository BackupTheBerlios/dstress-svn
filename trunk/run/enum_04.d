// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/enum_04.d,v 1.1 2004/08/23 20:56:27 th Exp $

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
