// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/do_while_01.d,v 1.1 2004/09/21 21:13:01 th Exp $

int main(){
	int test=10;
	assert(test==10);
	do{
		test--;
	}while(test>0)
	assert(test==0);
	return 0;
}