// $HeadURL$
// $Date$
// $Author$

module dstress.run.__FILE__01;

int main(){
	char[] c = __FILE__;
	version(Windows){
		assert(c==r"run\__FILE__01.d");
	}else{
		assert(c==r"run/__FILE__01.d");
	}
	return 0;
}