// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/throw_01.d,v 1.1 2004/08/23 17:18:36 th Exp $

int main(){
	int status=0;
	try{
		throw new Exception("a");
	}catch{
		status=1;
	}
	assert(status==1);
	return 0;
}
