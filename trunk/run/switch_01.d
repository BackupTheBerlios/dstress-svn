// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/switch_01.d,v 1.1 2004/09/21 22:05:10 th Exp $

int main(){
	int test=10;

	assert(test==10);
	switch(test){
		case 11: test*=test;
		case 10: test+=1;
		case  9: test*=2;
	}
	assert(test==22);

	return 0;
}
