// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/int_03.d,v 1.1 2004/08/21 20:44:50 th Exp $

int main(){
	int i;
	
	assert( i.alignof >= i.sizeof );
	assert( int.alignof >= i.sizeof );
	
	return 0;
}
