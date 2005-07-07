// $HeadURL$
// $Date$
// $Author$

// @author@	Ant^2i <Ant^2i_member@pathlink.com>
// @date@	2005-07-04
// @uri@	news:dabjsi$16h8$1@digitaldaemon.com
// @desc@	toobj.c:191: virtual void ClassDeclaration::toObjFile(): Assertion `!scope' failed	

module dstress.run.b.bug_toobj_191_D;

struct Outer(T){
	Inner i;

	struct Inner{
		T t;
	}
}

int main(){
	Outer!(int)* o=new Outer!(int);
	return 0;
}

