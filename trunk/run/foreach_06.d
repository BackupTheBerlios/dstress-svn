// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/foreach_06.d,v 1.1 2004/09/21 21:04:47 th Exp $


int main(){
	char[] array="\xE2\x89\xA0";
	int count=0;
	assert(count==0);
	foreach(int index, dchar obj; array){
		assert(index==0);
		assert(obj==0x2260);
		count++;
	}
	assert(count==1);
	return 0;
}