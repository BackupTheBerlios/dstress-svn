// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/for_01.d,v 1.1 2004/08/21 22:24:06 th Exp $

int main(){
	int status;

	assert(status==0);
	for(int index=0; index<10; index++){
		status++;
	}
	assert(status==10);

	return 0;
}
