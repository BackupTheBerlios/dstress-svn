// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Börklund <afb@algonet.se>
// @date@	2006-02-19
// @uri@	news:dt8eo8$5ol$1@digitaldaemon.com

module dstress.run.a.array_initialization_23_A;

int main(){
	float[] a;
	a.length = 1;

	if(a[0] <>= 0.0f){
		assert(0);
	}

	a[0] = 2.1f;

	a.length = 2;

	if(a[0] != 2.1f){
		assert(0);
	}
	if(a[1] <>= 0.0f){
		assert(0);
	}

	return 0;
}

