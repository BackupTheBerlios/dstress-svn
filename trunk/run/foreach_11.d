// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/foreach_11.d,v 1.1 2004/09/21 21:04:47 th Exp $


int main(){
	char[] array="abc";
	int count=0;
	assert(count==0);
	foreach(char value; array){
		count++;
		if(count>-1){
			continue;
		}
		assert(0);
	}
	assert(count==3);
	return 0;
}