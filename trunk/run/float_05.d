// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_05.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert( float.dig > 5 );
	assert( float.dig < double.dig );
	assert( float.dig == f.dig );
	assert( float.dig == (2.4f).dig );
	return 0;
}
