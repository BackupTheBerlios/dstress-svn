// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/while_02.d,v 1.1 2004/09/21 21:13:02 th Exp $

int main(){
	int test=10;
	assert(test==10);
	while(test>0){
		test--;
		if(test<11){
			continue;
		}
		assert(0);
	}
	assert(test==0);
	return 0;
}