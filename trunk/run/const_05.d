// $HeadURL$
// $Date$
// $URL$

module dstress.run.const_05;

const int c = b + 1;
const int a = 1;
const int b = a + 1;

int main(){
	assert(a==1);
	assert(b==2);
	assert(c==3);
	return 0;
}
