// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2006-01-02
// @uri@	news:dpbic4$cqb$1@digitaldaemon.com

module dstress.run.w.with_14_B;

class Class {
	int status;

	template foo() {
		int foo() {
			return status;
		}
	}
}

int main() {
	Class o = new Class();
	
	o.status = 3;

	with(o){
		assert(foo!()() == 3);
	}

	o.status = 1;

	with(o){
		assert(foo!()() == 1);
	}

	return 0;
}
