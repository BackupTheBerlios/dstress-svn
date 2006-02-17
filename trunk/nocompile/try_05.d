// $HeadURL$
// $Date$
// $Author$

// it is an error if any Catch Parameter type T1 hides a subsequent Catch with type T2

// __DSTRESS_ELINE__ 20

module dstress.nocompile.try_05;

class MyException :  Exception{
	this(char[] msg){
		super(msg);
	}
}

int main(){
	try{
		throw new MyException("");
	}catch(Exception e1){
		assert(0);
	}catch(MyException e2){
		assert(1);
	}
	return 0;
}
