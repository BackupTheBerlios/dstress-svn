/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_35;

int main(){
	TypeInfo ti = typeid(uint[]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (uint[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "uint[]"){
		assert(0);
	}

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (uint[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "uint[]"){
		assert(0);
	}

	return 0;
}
