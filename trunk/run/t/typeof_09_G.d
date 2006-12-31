// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-03-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=54

module dstress.run.t.typeof_09_G;

typedef int MyInt = 4;

typeof((new MyInt[0])[0]) y;

int main(){
	static if(!is(typeof(y) == MyInt)){
		static assert(0);
	}

	if(y != cast(MyInt)4){
		assert(0);
	}

	return 0;
}
