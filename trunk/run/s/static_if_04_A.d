// $HeadURL$
// $Date$
// $Author$

module dtsress.run.s.static_if_04_A;

int main(){
	const int i = 1;

	static if(i==1){
		return 0;
	}else{
		static assert(0);
	}
}
