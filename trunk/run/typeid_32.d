/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_32;

int main(){
	TypeInfo ti = typeid(int[]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (int[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "int[]"){
		assert(0);
	}

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (int[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "int[]"){
		assert(0);
	}

	return 0;
}
