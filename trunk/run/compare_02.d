// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/compare_02.d,v 1.1 2004/08/20 23:42:52 th Exp $

// @author@	Ben Hinkle <bhinkle4@juno.com>
// @date@	2004-08-07
// @uri@	news://cf2tt5$2073$1@digitaldaemon.com

class MyClass{
}

int main(){
	MyClass c = new MyClass();
	assert( c != null);

	c = null;
	if( c != null){
		assert(0);
	}

	return 0;
}
