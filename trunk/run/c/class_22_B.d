// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-03-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6413
// @desc@	dmd: toobj.c:191: virtual void ClassDeclaration::toObjFile(): Assertion `!scope' failed.

module dstress.run.c.class_22_B;

template T(){
	class B : A{
		int x(){
			return super.x() + 1;
		}
	}

	class A{
		int x(){
			return 1;
		}
	}
}

mixin T!();

int main(){
	A a = new A();

	if(a.x() != 1){
		assert(0);
	}


	B b = new B();

	if(b.x() != 2){
		assert(0);
	}


	A c = new B();

	if(c.x() != 2){
		assert(0);
	}

	return 0;
}
