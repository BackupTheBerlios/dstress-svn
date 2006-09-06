// $HeadURL$
// $Date$
// $Author$

// @author@	Chris Miller <chris@dprogramming.com>
// @date@	2006-02-20
// @uri@	news:op.s5anrdhxpo9bzi@moe

module dstress.run.t.typeid_88_D;

int main(){
	if(typeid(int*[]) != typeid(short*[])){
		return 0;
	}
	assert(0);
}
