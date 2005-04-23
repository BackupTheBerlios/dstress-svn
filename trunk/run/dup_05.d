// $HeadURL$
// $Date$
// $Author$

module dstress.run.dup_05;

int main(){
	char[] a= "abc".dup;
	char[] b;
	b=a.dup;
	assert(a=="abc");
	assert(a==b);
	assert(a.ptr!=b.ptr);
	return 0;
}
