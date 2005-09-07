// $HeadURL$
// $Date$
// $Author$

// @author@	Bastiaan Veelo <Bastiaan.N.Veelo@ntnu.no>
// @date@	2005-09-04
// @uri@	news:dffjik$2p30$1@digitaldaemon.com

module dstress.run.a.associative_array_18_B;

interface Interface{
	int test(int);
}

class Class : Interface{
	int test(int i){
		return i+1;
	}
}

int main(){
	Interface[Interface] aa;

	Class o = new Class();

	aa[o] = o;

	return 0; 
}
