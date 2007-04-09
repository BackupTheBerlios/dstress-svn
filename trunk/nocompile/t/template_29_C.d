// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2006-02-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6290
// @desc@	Internal error: e2ir.c 736

module dstress.nocompile.t.template_29_C;

template foo(uint i){
	const uint foo = foo!(i);
}

int main(){
	return foo!(uint.max);
}

