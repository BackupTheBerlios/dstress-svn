// $HeadURL$
// $Date$
// $Author$

module dtsress.run.s.static_if_04_D;

const int i = 1;

int main(){
	static if(i==2){
		static assert(0);
	}else{
		return 0;
	}
}
