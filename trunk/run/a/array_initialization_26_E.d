// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2006-12-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=746
// @desc@	[Issue 746] incorrect code generation for "new Type[][](1, 1)"

module dstress.run.a.array_initialization_26_E;

int main(){
	float[][] a = new float [][](1, 1);

	if((a.length != 1) || (a[0].length != 1)){
		assert(0);
	}
	if(a[0][0] !<>= 0.0){
		return 0;
	}

	assert(0);
}
