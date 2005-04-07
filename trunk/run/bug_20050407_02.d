// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <amedlock@nospam.org>
// @date@	2005-04-07
// @uri@	news:d33h85$2bem$1@digitaldaemon.com

module dstress.run.bug_20050407_02;

class VecStack{
	void quat_to_matrix(double[] M){
		M[]= 0;
	}

	void euler_to_matrix(double[] M){
		this.quat_to_matrix(M);
	}
}

int main(){
	VecStack vm = new VecStack;
	double[] M;
	vm.euler_to_matrix(M);
	assert(vm!==null);
	return 0;
}
