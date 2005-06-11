// $HeadURL$
// $Date$
// $Author$

module dtsress.run.s.static_if_04_C;

const int i = 1;

int main(){
	static if(i==1){
		return 0;
	}else{
		static assert(0);
	}
}
