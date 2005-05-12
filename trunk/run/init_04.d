// $HeadURL$
// $Date$
// $Author$

module dstress.run.init_04;

int main(){
	int i=2;
	assert(int.init!=i.init);
	assert(i==2);
	return 0;
}
