// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/foreach_01.d,v 1.1 2004/09/21 21:04:47 th Exp $

int main(){
	int array[10];
	int test;
	assert(test==0);
	foreach(int value; array){
		test++;
	}
	assert(test==10);
	return 0;
}