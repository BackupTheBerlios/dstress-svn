// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/do_while_03.d,v 1.1 2004/09/21 21:13:01 th Exp $

int main(){
	int test=10;
	assert(test==10);
	do{
		test--;
		if(test<2){
			break;
		}
	}while(test>0)
	assert(test==1);
	return 0;
}