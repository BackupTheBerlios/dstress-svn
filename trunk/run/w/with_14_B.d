// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2006-01-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5950

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
