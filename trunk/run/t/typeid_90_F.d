// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-07-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=271
// @desc@	[Issue 271] Incorrect constant evaluation of TypeInfo equality comparisons

module dstress.run.t.typeid_90_F;

int main(){
	if(typeid(int) != typeid(int)){
		assert(0);
	}

	return 0;
}
