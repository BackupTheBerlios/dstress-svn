// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.line_token_04;

int main(){
	try{
		#line 0 "a"
		assert(0);
	}catch(Object o){
		checkFileSpec(o);
		return 0;
	}

	assert(0);
}

/*
 * @WARNING@: this code depends on the phobos implementation.
 * char[]s returned by wrong assertions have to look like:
 *       "blah blah filename(123) blah blah"
 */
void checkFileSpec(Object o){
	string x=o.toString();

	int start;
	for(start=0; start<x.length; start++){
		if(x[start]=='('){
			break;
		}
	}

	assert(x[start-2 .. start+3]==" a(0)");                           
}
