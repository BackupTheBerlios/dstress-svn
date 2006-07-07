// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-07-06
// @uri@	news:bug-242-3@http.d.puremagic.com/issues/

module dstress.run.t.template_37_D;

template a(){
	template a(){
		int a = 1;
	}
}

int main(){
	int x = a!()!();

	if(x != 1){
		assert(0);
	}

	return 0;
}
