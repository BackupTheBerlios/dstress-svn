// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -release
module dstress.run.line_ending_dos;
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
	string msg=o.toString();
	
	int start;
	for(start=0; start<msg.length; start++){
		if(msg[start]=='('){
			break;
		}
	}

	int end;
	for(end=msg.length-1; end>start; end--){
		if(msg[end]==')'){
			break;
		}
	}

	assert(end-start==2);
	assert(msg[start+1]=='9');
}
