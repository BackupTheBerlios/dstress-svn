// $HeadURL$
// $Date$
// $Author$

module dstress.run.sizeof_11;

int main(){
	size_t sizeof;
	sizeof++;
	assert(sizeof==1);
	sizeof-=9;
	assert(sizeof==-8);
	return 0;
}
