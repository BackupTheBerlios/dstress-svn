// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_02_D;

int main(){
	static if(is(int[]*) == 1){
		return 0;
	}
}
