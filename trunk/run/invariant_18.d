// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.thisisspam.cn>
// @date@	2004-10-23
// @uri@	news:cldaue$2gf4$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2144

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.invariant_18;

class MyClass{
	invariant(){
		assert(0);
	}
}

int main(){
	try{
		MyClass c = new MyClass();
	}catch{
		return 0;
	}
	assert(0);
}
