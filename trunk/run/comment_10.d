// $HeadURL$
// $Date$
// $Author$

module dstress.run.comment_10;

int main(){
	char[] a;
	a = /+ "+/ "+/ 3";
	assert(a.length==4);
	assert(a[0]=='+');
	assert(a[1]=='/');
	assert(a[2]==' ');
	assert(a[3]=='3');
	return 0;
}
