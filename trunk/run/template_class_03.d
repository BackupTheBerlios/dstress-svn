// $HeadURL$
// $Date$
// $Author$

// @author@	Roel Mathys <roel.mathys@yucom.be>
// @date@	2004-05-21
// @uri@	news:c8ljro$q9h$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/250

module dstress.run.template_class_03;

class MyClass(T1){
	alias T1 type1;
}

class MyClass(T1, T2){
	alias T1 type1;
	alias MyClass!(T2) type2;
}

int main(){
	alias MyClass!(int,long) CT;
	CT c = new CT();
	return 0;
}
