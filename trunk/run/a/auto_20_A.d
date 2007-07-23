// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <godaves@yahoo.com>
// @date@	2006-11-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=606

module dstress.run.a.auto_20_A;

int prop() {
	return 0x12AA34FF;
}

int main(){
	auto x = prop;
	static assert(is(typeof(x) == int));

	if(0x12AA34FF != x){
		assert(0);
	}

	return 0;
}
