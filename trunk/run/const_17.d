// $HeadURL$
// $Date$
// $URL$

module dstress.run.const_17;

const int c = b * 2;
const int a = 1;
const int b = a * 3;

int main(){
	assert(a==1);
	assert(b==3);
	assert(c==6);
	return 0;
}
