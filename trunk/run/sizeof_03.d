// $HeadURL$
// $Date$
// $Author$

module dstress.run.sizeof_03;

int main(){
	bool i[];
	i.length=4;
	assert(i.length==4);
	assert(i.sizeof==8);
	return 0;
}
