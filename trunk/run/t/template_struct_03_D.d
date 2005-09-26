// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-26
// @uri@	news:dh9jpe$1uv7$1@digitaldaemon.com

module dstress.run.t.template_struct_03_D;

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
	
	return 0;
}