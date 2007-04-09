// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-08-31
// @uri@	news:opsdldgki75a2sq9@digitalmars.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1685

// __DSTRESS_ELINE__ 16

module dstress.nocompile.bug_expression_1147;

template A(Type : Type[]){
	bool A(Type[] a){
		this.bar();
	}
}

template B(){
	bool foo(char[] x){
		return A!(typeof(x))(x);
	}
}

class C{
	mixin B;
}

void main(){
	C c = new C();
	return 0;
}
