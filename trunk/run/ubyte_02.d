// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/ubyte_02.d,v 1.1 2004/08/21 20:44:51 th Exp $

int main(){
	ubyte u;
	assert( u.sizeof == 1 );
	assert( ubyte.sizeof == 1 );
	assert( typeid( ubyte ).tsize() == 1 );
	return 0;
}
