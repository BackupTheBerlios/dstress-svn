// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/switch_03.d,v 1.1 2004/09/21 22:05:10 th Exp $

int main(){
	int test=10;

	assert(test==10);
	try{
		switch(test){
			case 11: break;
			case 12: break;
		}
	}catch(Exception e){
		test=1;	
	}

	assert(test==1);

	return 0;
}
