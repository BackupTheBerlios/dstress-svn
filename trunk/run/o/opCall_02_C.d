// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-05-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=135

module dstress.run.o.opCall_02_C;

class X{
	static int opCall(){
		return 3;
	}
}

int main(){
	X x;

	if((typeof(x))() != 3){
		assert(0);
	}

	return 0;
}

