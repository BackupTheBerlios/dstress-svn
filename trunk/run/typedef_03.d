// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/typedef_03.d,v 1.1 2004/08/20 23:42:54 th Exp $

// @author@	Sam McCall <tunah@tunah.net>
// @date@	2004-07-27
// @uri@	news://ce586c$212e$1@digitaldaemon.com

public static final uint U = (cast(uint)(-1)) >>> 2;

typedef uint myType;
public static final myType T = (cast(myType)(-1)) >>> 2;

int main(){
	assert(U == 0x3FFFFFFF);
	assert(T == 0x3FFFFFFF);

	return 0;
}
