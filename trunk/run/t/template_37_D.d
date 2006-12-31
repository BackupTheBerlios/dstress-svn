// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-07-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=242

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
