// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-26
// @uri@	news:dh9jpe$1uv7$1@digitaldaemon.com

module dstress.run.t.template_struct_03_C;

struct A (uint D){
	B!(D - 1) b;
}

struct B (uint D){
	uint [D] data;
	uint foo () {
		return data [0];
	}
}

int main(){
	B!(3) b2;
	assert(b2.data.length==3);

	A!(4) a4;
	assert(a4.b.data.length==3);
	
	return 0;
}