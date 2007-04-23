// $HeadURL$
// $Date$
// $Author$

// @author@	Alex <CppCoder@gmail.com>
// @date@	2007-04-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1144
// @desc@	[Issue 1144] template mixin causes DMD crash

// __DSTRESS_ELINE__ 16

module dstress.nocompile.m.mixin_34_A;

char[] testHelper(A ...)(){
	char[] result;
	foreach(t; a){
		result ~= "int " ~ t ~ ";\n";
	}
	return result;
}

int main(){
	mixin( testHelper!( "hello", "world" )() );
	return 0;
}

