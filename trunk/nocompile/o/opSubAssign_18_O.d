// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2005-11-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=725

// __DSTRESS_ELINE__ 21

module dstress.nocompile.o.opSubAssign_18_O;

class X{
	int a;
}

void main(){
	X x;
	int a;
	
	x -= a;
}
