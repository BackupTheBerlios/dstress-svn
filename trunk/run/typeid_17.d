/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_17;

int main(){
	TypeInfo ti = typeid(bool[]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (bool[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "bool[]"){
		assert(0);
	}
	
	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (bool[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "bool[]"){
		assert(0);
	}

	return 0;
}
