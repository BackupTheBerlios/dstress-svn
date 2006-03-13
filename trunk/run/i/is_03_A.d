// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_03_A;

int main(){
	static if(is(double : int) == 0){
		return 0;
	}
}
