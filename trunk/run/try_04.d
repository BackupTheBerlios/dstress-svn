// $HeadURL$
// $Date$
// $Author$

module dstress.run.try_04;

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
