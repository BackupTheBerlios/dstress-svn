// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <bhinkle4@juno.com>
// @date@	2004-08-07
// @uri@	news:cf2tt5$2073$1@digitaldaemon.com

module dstress.run.compare_02;

class MyClass{
}

int main(){
	MyClass c = new MyClass();
	assert( !(c is null));

	return 0;
}
