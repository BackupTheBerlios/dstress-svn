// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/out_01.d,v 1.1 2004/08/23 17:18:35 th Exp $

void check(out int x){
}

int main(){
	int y=2;
	assert(y==2);
	check(y);
	assert(y==0);
	return 0;
}
