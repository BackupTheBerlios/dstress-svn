
// @author@	Regan Heat <regan@netwin.co.nz>
// @date@	2004-08-19
// @uri@	news://opsczziyi5a2sq9@digitalmars.com

enum Enum{
	a
}

int main(){
	bit[] b;
	Enum e;
	b = cast(bit[])(cast(bit*)e);
	return 0;
}
