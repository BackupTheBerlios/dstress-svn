/* $HeadURL$
 * $Date$
 * $Author$
 */

module dstress.run.typeid_26;

int main(){
	TypeInfo ti = typeid(short[]);
	if(ti is null){
		assert(0);
	}
	if(!ti){
		assert(0);
	}
	if(ti.tsize != (short[]).sizeof){
		assert(0);
	}
	if(ti.toString() != "short[]"){
		assert(0);
	}

	TypeInfo_Array ta = cast(TypeInfo_Array) ti;
	if(ta is null){
		assert(0);
	}
	if(!ta){
		assert(0);
	}
	if(ta.tsize != (short[]).sizeof){
		assert(0);
	}
	if(ta.toString() != "short[]"){
		assert(0);
	}

	return 0;
}
