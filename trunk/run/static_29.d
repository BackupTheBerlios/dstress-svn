// $HeadURL$
// $Date$
// $Author$

// @author@	Carlos Santander B. <csantander619@gmail.com>
// @date@	2005-02-15
// @uri@	news:cutof5$1e68$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/D.gnu/1039

module dstress.run.static_29;

class A{
	static int test(){
		return 5;
	}
}

class B:A{
        int check(){
        	return A.test+1;
        }
}

int main(){
	B b = new B();
	assert(b.check()==6);
	return 0;
}