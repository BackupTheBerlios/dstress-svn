// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-02-06
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2878

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_25;

class MyClass{
	invariant{
		assert(0);
	}
}

int main(){
	try{
		MyClass c = new MyClass();
		assert(c);
	}catch(InvariantException e){
		return 0;
	}
	assert(0);
}
