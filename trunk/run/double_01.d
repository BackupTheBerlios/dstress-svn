// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/double_01.d,v 1.3 2004/08/23 18:28:08 th Exp $

int main(){
	double d;

	assert( double.init !<> double.nan);
	assert( d.init !<> double.nan);
	assert( d !<> double.nan);
	assert( (2.3).init !<> double.nan);
	return 0;
}		
