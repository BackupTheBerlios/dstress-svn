// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/if_04.d,v 1.1 2004/09/21 21:04:48 th Exp $

int main(){
	int value=6;
	if(value<0){
		assert(0);
	}else if(value>3){
		return 0;
	}else{
		assert(0);
	}
	return -1;
}