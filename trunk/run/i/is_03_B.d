// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_03_B;

int main(){
	static if(is(int : double) == 1){
		return 0;
	}
}
