// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/try_04.d,v 1.1 2004/09/22 20:12:54 th Exp $

class MyException :  Exception{
	this(char[] msg){
		super(msg);
	}
	int x;
}
int main(){
	int check=0;
	assert(check==0);
	try{
		MyException e=new MyException("");
		e.x=2;
		throw e;
	}catch(MyException me){
		assert(me.x==2);
		check+=5;
	}catch(Exception){
		check+=3;
	}finally{
		check++;
	}
	assert(check==6);
	return 0;
}
