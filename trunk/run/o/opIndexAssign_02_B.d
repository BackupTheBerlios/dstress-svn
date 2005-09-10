// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-07
// @uri@	news:dfnoke$15gk$1@digitaldaemon.com

module dstress.run.opIndexAssign_02_B;

int check;

struct Array{
	int opIndex(int a){
		check = a;
		return a;
	}
	
	int opIndexAssign(int a, int b){
		check = a * b;
		return a;
	}
}

class Property{
	Array property(){
		Array a;
		return a;
	}
}

int main(){
	Property p = new Property();
	
	p.property[4] = 8;
	assert(check == 4*8);
	
	return 0;
}