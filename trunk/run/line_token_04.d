int main(){
	try{
		#line 0 "a"
		assert(0);
	}catch(Exception e){
		checkFileSpec(e);
		return 0;
	}catch(Error e){
		checkFileSpec(e);
		return 0;
	}

	assert(-1);
	return 1;
}

/*
 * @WARNING@: this code depends on the phobos implementation.
 * char[]s returned by wrong assertions have to look like:
 *       "blah blah "filename" blah blah"
 */
void checkFileSpec(Object o){
	char[] string=o.toString();

	int start;
	for(start=0; start<string.length; start++){
		if(string[start]=='"'){
			break;
		}
	}

	int end;
	for(end=start+1; end<string.length; end++){
		if(string[end]=='"'){
			break;
		}
	}

	assert(end<string.length);                           
        assert(end-start==2);
	assert(string[start+1]=='a');
}