// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/foreach_13.d,v 1.2 2004/09/22 23:25:38 th Exp $


int main(){
	char[] array="abc";
	int count=0;
	assert(count==0);
	assert(array[0]=='a');
	assert(array[1]=='b');
	assert(array[2]=='c');
	foreach(inout char value; array){
		count++;
		value++;
	}
	assert(count==3);
	assert(array[0]=='b');
	assert(array[1]=='c');
	assert(array[2]=='d');
	return 0;
}
