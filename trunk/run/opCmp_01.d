// @author@	k2 <k2_member@pathlink.com>
// @date@	2004-08-04
// @uri@	news://ceq9g7$25mj$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1248

module dstress.run.opCmp_01;

struct MyStruct{
	int opCmp(MyStruct m){
		return 0;
	}
}

int main(){
	MyStruct[] s;
	s.sort;
	return 0;
}
