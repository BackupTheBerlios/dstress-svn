// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_01.d,v 1.2 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert( float.init !<> float.nan);
	assert( f.init !<> float.nan);
	assert( f !<> float.nan);
	assert( (2.3f).init !<> float.nan);
	return 0;
}		
