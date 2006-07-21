// $HeadURL$
// $Date$
// $Author$

// @author@	oskar.linde@gmail.com
// @date@	2006-03-08
// @uri@	news:bug-25-3@http.d.puremagic.com/bugzilla/

module dstress.run.f.foreach_34_C;

template crash(T){
	int crash(T t){
		int sum;
		foreach(u; t){
			sum += u;
		}

		return sum;
	}
}

int main(){
	if(crash("Ab-") != 'A' + 'b' + '-'){
		assert(0);
	}
	return 0;
}

