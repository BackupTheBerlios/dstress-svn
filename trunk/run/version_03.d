// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_03.d,v 1.1 2004/08/20 23:42:55 th Exp $

int main(){
	int endian;
	
	version(LittleEndian){
		endian++;
	}
	
	version(BigEndian){
		endian++;
	}
	
	assert(endian == 1);
	
	return 0;
}