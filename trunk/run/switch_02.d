// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/switch_02.d,v 1.1 2004/09/21 22:05:10 th Exp $

int main(){
	int test=10;

	assert(test==10);
	switch(test){
		case 11: test*=test;
		case 10: test+=1; break;
		default: test*=2;
	}
	assert(test==11);

	return 0;
}
