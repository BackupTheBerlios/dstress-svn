// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/default_argument_01.d,v 1.1 2004/08/21 23:18:23 th Exp $

int status;

void check(int plus=1){
	status+=plus;
}

int main(){
	assert(status==0);
	check();
	assert(status==1);
	check(3);
	assert(status==4);
	return 0;
}
