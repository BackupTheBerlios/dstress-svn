// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_02_G;

int main(){
	static if(is(ints*) == 0){
		return 0;
	}
}
