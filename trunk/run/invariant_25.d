// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-02-06
// @uri@	news:s2chd2-1n2.ln1@lnews.kuehne.cn

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
