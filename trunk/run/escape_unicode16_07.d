int main(){
	char[] a="\uABCD";
	char[] b="\uabcd";
	assert(a.length==3);
	assert(b.length==3);
	assert(a[0]==b[0]);
	assert(a[1]==b[1]);
	assert(a[2]==b[2]);
	return 0;
}
