// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_02_B;

int main(){
	static if(is(int[]) == 1){
		return 0;
	}
}
