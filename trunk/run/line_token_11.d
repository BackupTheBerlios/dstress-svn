// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.line_token_11;

# line __LINE__ 

int main(){
	try{
		assert(0);
	}catch(Exception e){
		checkLineNumber(e);
		return 0;
	}

	assert(0);
}

/* 
 * @WARNING@ this code depends on the phobos implementation.
 * char[]s returned by wrong assertions have to look like:
 *	 "blah blah (linenumber) blah blah"
 */
void checkLineNumber(Object o){
	string x=o.toString();
	
	int start;
	for(start=0; start<x.length; start++){
		if(x[start]=='('){
			break;
		}
	}

	int end;
	for(end=x.length-1; end>start; end--){
		if(x[end]==')'){
			break;
		}
	}

	assert(end-start==3);
	assert(x[start+1]=='1');
	assert(x[start+2]=='2');
}
