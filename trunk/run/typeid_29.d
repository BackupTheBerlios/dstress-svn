/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_28;

int main(){
	TypeInfo ti = typeid(ushort[]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (ushort[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "ushort[]"){
		assert(0);
	}

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (ushort[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "ushort[]"){
		assert(0);
	}

	return 0;
}
