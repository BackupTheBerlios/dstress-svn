// $HeadURL$
// $Date$
// $Author$

// @author@	Unknown W. Brackets <unknown@simplemachines.org>
// @date@	2006-03-04
// @uri@	news:dud1s0$icq$1@digitaldaemon.com

module dstress.undefined.float_literal_01_C;

int _;

void main(){
	static if(is(typeof(_.) == double)){
		pragma(msg, "lex.html#floatliteral");
	}else{
		pragma(msg, "should fail to compile");
	}
}
