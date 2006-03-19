// $HeadURL$
// $Date$
// $Author$

// @author@	<oskar.linde@gmail.com>
// @date@	2006-03-16
// @uri@	news:bug-54-3@http.d.puremagic.com/bugzilla/

module dstress.run.t.typeof_09_H;

typedef int MyInt = 4;

typeof((new MyInt[1])[0]) y;

int main(){
	static if(!is(typeof(y) == MyInt)){
		static assert(0);
	}

	if(y != cast(MyInt)4){
		assert(0);
	}

	return 0;
}
