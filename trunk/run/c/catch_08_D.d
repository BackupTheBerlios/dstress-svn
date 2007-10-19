// $HeadURL$
// $Date$
// $Author$

// @author@	<pop.atry@gmail.com>
// @date@	2007-10-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1595
// @desc@	[Issue 1595] Multiple typedefs of Exception should be treated as different types.

module dstress.run.c.catch_08_D;

class Base{
}

typedef Base Cat;
typedef Base Dog;

int main(){
	try{
		throw new Cat();
	}catch(Dog d){
		assert(0);
	}catch(Cat c){
		return 0;
	}
	assert(0);
}
		
