// $HeadURL$
// $Date$
// $Author$

module dstress.run.sizeof_02;

int main(){
	int i[];
	i.length=4;
	assert(i.length==4);
	assert(i.sizeof==8);
	return 0;
}
