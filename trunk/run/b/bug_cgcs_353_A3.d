// $HeadURL$
// $Date$
// $Author$

// @author@	James Dunne <james.jdunne@gmail.com>
// @date@	2005-08-28
// @uri@	news:dethn0$1gn8$1@digitaldaemon.com

module dstress.run.b.bug_cgcs_353_A3;

class Foo {
	this(){
	}
}

int main(){
	Foo[] foos;

	if(foos.length != 0){
		assert(0);
	}

	foos = new Foo() ~ foos;

	if(foos.length != 1){
		assert(0);
	}

	return 0;
}
