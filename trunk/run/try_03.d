// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/try_03.d,v 1.1 2004/09/22 20:12:54 th Exp $

int main(){
	int check=0;
	assert(check==0);
	try{
	}catch(Exception){
		check++;
	}finally{
		check++;
	}
	assert(check==1);
	return 0;
}
