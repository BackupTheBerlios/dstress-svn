// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_unicode32_03;

int main(){
	char[] a="\U0000ABCD";
	char[] b="\U0000abcd";
	assert(a.length==3);
	assert(b.length==3);
	assert(a[0]==b[0]);
	assert(a[1]==b[1]);
	assert(a[2]==b[2]);
	return 0;
}
