// $HeadURL$
// $Date$
// $Auhtor$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-08
// @uri@	news:d5lotd$29j1$1@digitaldaemon.com

module dstress.run.t.typeid_86_A;

int main(){
	struct A{
	}

	struct B{
	}

	assert(typeid(A) != typeid(B));

	return 0;
}
