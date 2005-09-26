// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.try_10_C;

void foo(){
	try{
		if(0){
			void bar(int d){
				assert(0);
			}
			bar(0);
		}
	}catch{
	}
}

int main(){
	foo();
	return 0;
}