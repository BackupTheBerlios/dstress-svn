// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/ushort_03.d,v 1.1 2004/08/21 20:44:51 th Exp $

int main(){
	ushort u;
	assert( u.alignof >= u.sizeof );
	assert( ushort.alignof >= u.sizeof );
	return 0;
}
