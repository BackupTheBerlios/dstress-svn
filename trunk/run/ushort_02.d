// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/ushort_02.d,v 1.1 2004/08/21 20:44:51 th Exp $

int main(){
	ushort u;
	assert( u.sizeof == 2 );	
	assert( ushort.sizeof == 2 );
	assert( typeid( ushort ).tsize() == 2);
	return 0;
}
