// $HeadURL$
// $Date$
// $Author$

// @author@	Kris <fu@bar.com>
// @date@	2005-12-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5887

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.p.private_09_D;

class Base(T){
	private int i;
}

class Derived(T) : Base!(T){
	int test(){
		return i++;
	}
}

int main(){
	Derived!(char) d = new Derived!(char)();

	assert(d.test() == 0);
	
	if(d.test() == 1){
		return 0;
	}
}
