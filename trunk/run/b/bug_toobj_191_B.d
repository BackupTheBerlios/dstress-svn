// $HeadURL$
// $Date$
// $Author$

// @author@	Ant^2i <Ant^2i_member@pathlink.com>
// @date@	2005-07-04
// @uri@	news:dabjsi$16h8$1@digitaldaemon.com
// @desc@	toobj.c:191: virtual void ClassDeclaration::toObjFile(): Assertion `!scope' failed

module dstress.run.b.bug_toobj_191_B;

class Class(T){
	struct Struct{
		T t;
	}

	Struct s;
}

int main(){
	Class!(int) o=new Class!(int);
	return 0;
}

