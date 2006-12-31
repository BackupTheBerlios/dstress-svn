// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-08-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=305
// @desc@	[Issue 305] New: version and static if blocks introduce new scope for 'scope' statement

module dstress.run.v.version_38_E;

int status;

void foo(){
	version( all ){
		scope(failure) status++;
	}
	version( all ){
		scope(failure) status *= 2;
	}

	throw new Exception("message");
}

int main(){
	status = 1;

	try{
		foo();
	}catch{
	}
	
	if(status != 3){
		assert(0);
	}

	return 0;
}
