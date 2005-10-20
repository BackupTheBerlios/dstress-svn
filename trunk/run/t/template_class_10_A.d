// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-26
// @uri@	news:dh9jpe$1uv7$1@digitaldaemon.com

module dstress.run.t.template_class_10_A;

class A (uint D){
	B!(D - 1) b;
	
	this(){
		b = new B!(D-1);
	}
}

class B (uint D){
	uint [D] data;
	uint foo () {
		return data [0];
	}
}

int main(){
	A!(4) a4 = new A!(4);
	assert(a4.b.data.length==3);

	return 0;
}