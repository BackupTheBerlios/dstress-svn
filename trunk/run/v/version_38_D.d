// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-08-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=305
// @desc@	[Issue 305] New: version and static if blocks introduce new scope for 'scope' statement

module dstress.run.v.version_38_D;

int status;

void foo(){
	version( all ){
		scope(exit) status++;
	}
	version( all ){
		scope(success) status *= 2;
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
