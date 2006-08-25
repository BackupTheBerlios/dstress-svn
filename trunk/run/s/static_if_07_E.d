// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2006-08-23
// @uri@	news:bug-305-3@http.d.puremagic.com/issues/
// @desc@	[Issue 305] New: version and static if blocks introduce new scope for 'scope' statement

module dstress.run.s.static_if_07_E;

int status;

void foo(){
	static if(true){
		scope(failure) status++;
	}
	static if(true){
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
