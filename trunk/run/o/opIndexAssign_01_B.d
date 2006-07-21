// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-09-07
// @uri@	news:dfnoke$15gk$1@digitaldaemon.com

module dstress.run.opIndexAssign_01_B;

int check;

class Array{
	int opIndex(int a){
		check = a;
		return a;
	}

	int opIndexAssign(int a, int b){
		check = a * b;
		return a;
	}
}

int main(){
	Array a = new Array();

	a[4] = 8;
	assert(check == 4*8);

	return 0;
}
