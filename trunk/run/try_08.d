// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/try_08.d,v 1.1 2004/09/22 20:12:55 th Exp $

int main(){
	int check=0;
	assert(check==0);
	try{
		throw new Exception("mesg");
	}catch{
		check++;
	}finally{
		check++;
	}
	assert(check==2);
	return 0;
}
