// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/try_05.d,v 1.1 2004/09/22 20:12:52 th Exp $

class MyException :  Exception{
	this(char[] msg){
		super(msg);
	}
}
int main(){
	try{
		throw new MyException("");
	}catch(Exception){
		assert(0);
	}catch(MyException){
		assert(0);
	}
	return 0;
}
