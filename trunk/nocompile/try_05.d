
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
