// @author@	Sam McCall <tunah@tunah.net>
// @date@	2004-07-27
// @uri@	news://ce586c$212e$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:1148

module dstress.run.typedef_03;

public static final uint U = (cast(uint)(-1)) >>> 2;

typedef uint myType;
public static final myType T = (cast(myType)(-1)) >>> 2;

int main(){
	assert(U == 0x3FFFFFFF);
	assert(T == 0x3FFFFFFF);

	return 0;
}
