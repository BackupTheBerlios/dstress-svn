// $HeadURL$
// $Date$
// $Author$

// @author@	oskar.linde@gmail.com
// @date@	2006-03-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=25

module dstress.run.f.foreach_34_B;

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
	if(crash!(char[])("Ab-") != 'A' + 'b' + '-'){
		assert(0);
	}
	return 0;
}

