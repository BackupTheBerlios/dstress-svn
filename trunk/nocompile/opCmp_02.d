// @author@	Derek Parnell <derek@psych.ward>
// @date@	2004-10-12
// @uri@	news://ckfav3$2gbv$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2080

module dstress.nocompile.opCmp_02;

struct MyStruct{
}

int main(){
	MyStruct a;
	MyStruct b;
	if(a < b){
		// complain about missing opCmp
	}
	return 0;
}
