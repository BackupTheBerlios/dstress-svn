// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_01.d,v 1.1 2004/08/20 23:42:55 th Exp $

version = MyVersion;

int main(){
	int i;
	version(MyVersion){
		i++;
	}
	assert(i == 1);
	return 0;
}