// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <jarrett.billingsley@gmail.com>
// @date@	2007-01-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=874
// @desc@	[Issue 874] Incorrect codegen (?) with tuples, string constants, and AAs

module dstress.run.o.odd_bug_13_A;

template AA(V, K){
	V[K] AA(T...)(T args){
		V[K] ret;
		K key;

		foreach(i, arg; args){
			if(!(i & 1)){
				key = arg;
			}else{
				ret[key] = arg;
			}
		}

		assert(2 == ret.length);
		assert("b" == ret["a"]);
		assert("d" == ret["c"]);
		return ret;
	}
}

int main(){
	char[][char[]] array = AA!(char[], char[])("a", "b", "c", "d");
	if(2 != array.length){
		assert(0);
	}
	if("b" != array["a"]){
		assert(0);
	}
	if("d" != array["c"]){
		assert(0);
	}
	return 0;
}
