// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <amedlock@nospam.org>
// @date@	2005-04-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3538

module dstress.run.bug_20050407_01;

class VecStack{
	void quat_to_matrix(double[16]M){
		M[]= 0;
	}

	void euler_to_matrix(double[16]M){
		this.quat_to_matrix(M);
	}
}

int main(){
	VecStack vm = new VecStack;
	double[16] M;
	vm.euler_to_matrix(M);
	assert(!(vm is null));
	return 0;
}
