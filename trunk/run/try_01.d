// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/try_01.d,v 1.1 2004/09/22 20:12:54 th Exp $

int main(){
	int check=0;
	assert(check==0);
	try{
		throw new Exception("message");
	}catch(Exception){
		check++;
	}
	assert(check==1);
	return 0;
}
