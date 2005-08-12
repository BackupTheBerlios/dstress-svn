// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-08-11
// @uri@	news:ddfegl$2uof$1@digitaldaemon.com

//
// http://www.digitalmars.com/d/attribute.html
//
// (1)
// The const attribute declares constants that can be evaluated at
// compile time.
//
// (2)
// A const declaration without an initializer must be initialized in a
// constructor (for class fields) or in a static constructor (for static
// class members, or module variable declarations).
//

module dstress.undefined.const_24;

class Class{
	const int i;
	
	this(){
		i=dynamicInt; // illegal(1) or legal(2) ?
	}
}

int dynamicInt;

int main(char[][] args){
	dynamicInt=args.length;
	
	Class c = new Class();
	assert(c.i==args.length);
	
	return 0;
}