// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/in_01.d,v 1.2 2004/08/23 20:38:17 th Exp $

void check(in int a){
	assert(a==0);
	a++;
	assert(a==1);
}

int main(){
	int i;
	assert(i==0);
	check(i);
	assert(i==0);
	return 0;
}
