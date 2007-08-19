// $HeadURL$
// $Date$
// $Author$

module dstress.run.escape_octal_01;

int main(){
	string x="\012";
	assert(x.length==1);
	assert(x[0]==0x0A);
	return 0;
}
