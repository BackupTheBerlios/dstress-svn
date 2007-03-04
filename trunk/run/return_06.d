// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=727
// @desc@	[Issue 727] -inline: missing return in short function causes incorrect code generation

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.return_06;

int test(int i){
	if(i==0){
		return 2;
	}
}

int main(){
	if(2 != test(0)){
		assert(0);
	}

	try{
		test(1);
	}catch{
		return 0;
	}
	assert(0);
}
