int main(){
	char[] a="\u00C4";
	char[] b="\u0041\u0308";
	
	if(b>a){
		assert(0);
	}

	return 0;
}
