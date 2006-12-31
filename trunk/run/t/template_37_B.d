// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-07-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=242

module dstress.run.t.template_37_B;

template a(){
	template b(){
		int b = 1;
	}
}

int main(){
	int x = a!().b!();

	if(x != 1){
		assert(0);
	}

	return 0;
}
