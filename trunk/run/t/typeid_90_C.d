// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-07-29
// @uri@	news:bug-271-3@http.d.puremagic.com/issues/
// @desc@	[Issue 271] Incorrect constant evaluation of TypeInfo equality comparisons

module dstress.run.t.typeid_90_C;

int main(){
	if(typeid(int) == typeid(short)){
		assert(0);
	}

	return 0;
}

