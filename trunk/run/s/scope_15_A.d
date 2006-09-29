// $HeadURL$
// $Date$
// $Author$

// @author@	<shro8822@uidaho.edu>
// @date@	2006-09-25
// @uri@	news:ef91dr$bda$1@digitaldaemon.com
// @desc@	[Issue 315] Exception handling is broken for delegates on Linux

module dstress.run.s.scope_15_A;

int status;

void foo(){
	{
		scope(exit) status += 1;
	}

	scope(exit) status *= 10;
}

int main(){
	status = 2;
	foo();

	if(status != 30){
		assert(0);
	}

	return 0;
}
