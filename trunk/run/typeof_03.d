// $HeadURL$
// $Date$
// $Author$

module dstress.run.typeof_03;

int main(){
	int i = 1;
	typeof(++i) j;      // j is declared to be an int, i is not incremented
	assert( i == 1);
	return 0;
}
