// $HeadURL$
// $Date$
// $Author$

module dstress.run.line_token_12;

# line __LINE__ __FILE__

int main(){
	try{
		assert(0);
	}catch(Exception e){
		checkLineNumber(e);
		return 0;
	}

	assert(-1);
	return 1;
}

/* 
 * @WARNING@ this code depends on the phobos implementation.
 * char[]s returned by wrong assertions have to look like:
 *	 "blah blah (linenumber) blah blah"
 */
void checkLineNumber(Object o){
	char[] sring=o.toString();
	
	int start;
	for(start=0; start<string.length; start++){
		if(string[start]=='('){
			break;
		}
	}

	int end;
	for(end=string.length-1; end>start; end--){
		if(string[end]==')'){
			break;
		}
	}

	assert(end-start==3);
	assert(string[start+1]=='1');
	assert(string[start+2]=='0');
}
