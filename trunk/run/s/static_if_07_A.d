// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-08-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=305
// @desc@	[Issue 305] New: version and static if blocks introduce new scope for 'scope' statement

module dstress.run.s.static_if_07_A;

int status;

void foo(){
	static if(true){
		scope(exit) status++;
	}
	static if(true){
		scope(exit) status *= 2;
	}
}

int main(){
	status = 1;
	foo();
	if(status != 3){
		assert(0);
	}

	return 0;
}
