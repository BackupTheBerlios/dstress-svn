// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/switch_05.d,v 1.1 2004/09/21 22:05:10 th Exp $

int main(){
	int test=10;

	assert(test==10);
	switch(test){
		case 11: break;
		case 12,10,9:{
			test+=6;
		}
	}
	assert(test==16);

	return 0;
}
