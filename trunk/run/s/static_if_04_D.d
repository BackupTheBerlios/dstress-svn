// $HeadURL$
// $Date$
// $Author$

module dtsress.run.s.static_if_04_B;

int main(){
	const int i = 1;

	static if(i==2){
		static assert(0);
	}else{
		return 0;
	}
}
