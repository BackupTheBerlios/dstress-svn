// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/int_02.d,v 1.1 2004/08/21 20:44:50 th Exp $

int main(){
	int i;
	
	assert( i.sizeof == 4 );
	assert( int.sizeof == 4 );
	assert( typeid( int ).tsize() == 4);

	return 0;
}
