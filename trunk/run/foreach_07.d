// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/foreach_07.d,v 1.1 2004/09/21 21:04:47 th Exp $


int main(){
	dchar[] array="\u2260";
	int test=0;
	int count=0;
	assert(count==0);
	foreach(int index, char obj; array){
		test+=obj;
		count++;
	}
	assert(count==3);
	assert(test==0x20b);
	return 0;
}