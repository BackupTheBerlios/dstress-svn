// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/foreach_12.d,v 1.1 2004/09/21 21:04:47 th Exp $


int main(){
	char[] array="abc";
	int count=0;
	assert(count==0);
	foreach(char value; array){
		count++;
		if(value=='b'){
			break;
		}
	}
	assert(count==2);
	return 0;
}