/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_14;

int main(){
	TypeInfo ti = typeid(void[]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (void[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "void[]"){
		assert(0);
	}

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (void[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "void[]"){
		assert(0);
	}

	return 0;
}
