// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/out_02.d,v 1.2 2004/08/23 20:38:17 th Exp $

void check(out int i){
	assert(i==0);
	i=2;
}

int main(){
	int i=1;
	assert(i==1);
	check(i);
	assert(i==2);
	return 0;
}
