// $HeadURL$
// $Date$
// $Author$

// @author@	<torhu@yahoo.com>
// @date@	2007-01-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=992
// @desc@	[Issue 992] export keyword causes undefined references on linux

module dstress.run.e.export_01_A;

export int global_var = 0x12_34_AB_CD;

int main(){
	if(0x12_34_AB_CD != global_var){
		assert(0);
	}
	return 0;
}
