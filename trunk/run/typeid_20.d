/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_20;

int main(){
	TypeInfo ti = typeid(byte[]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (byte[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "byte[]"){
		assert(0);
	}

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (byte[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "byte[]"){
		assert(0);
	}

	return 0;
}
