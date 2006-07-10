/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_38;

int main(){
	TypeInfo ti = typeid(long[]);
	if(ti is null){
		assert(0);
	}
	
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (long[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "long[]"){
		assert(0);
	}

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (long[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "long[]"){
		assert(0);
	}

	return 0;
}
