// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/length_01.d,v 1.2 2004/09/22 23:25:38 th Exp $

int main(){
	byte[3] array;
	array[0]=2;
	array[1]=4;
	array[2]=8;
	int length=1;
	assert(length-1==0);
	assert(array[length-1]==8);
	return 0;
}
