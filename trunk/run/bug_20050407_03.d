// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <amedlock@nospam.org>
// @date@	2005-04-07
// @uri@	news:d33h85$2bem$1@digitaldaemon.com

module dstress.run.bug_20050407_03;

class VecStack{
	void quat_to_matrix(double[16]M){
		M[]= 0;
	}
}

int main(){
	VecStack vm = new VecStack;
	double[16] M;
	vm.quat_to_matrix(M);
	assert(vm!==null);
	return 0;
}
