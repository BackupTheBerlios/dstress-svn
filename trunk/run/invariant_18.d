// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2004-10-23
// @uri@	news://cldaue$2gf4$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2144

module dstress.run.invariant_18;

class MyClass{
	invariant{
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
