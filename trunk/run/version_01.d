// $HeadURL$
// $Date$
// $Author$

module dstress.run.version_01;

version = MyVersion;

int main(){
	int i;
	version(MyVersion){
		i++;
	}
	assert(i == 1);
	return 0;
}
