// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_04_A;

int main(){
	static if(is(Object == class) == 1){
		return 0;
	}
}
