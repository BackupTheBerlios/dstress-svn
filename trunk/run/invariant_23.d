// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-02-06
// @uri@	news:vlbhd2-1n2.ln1@lnews.kuehne.cn

module dstress.run.invariant_23;

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
