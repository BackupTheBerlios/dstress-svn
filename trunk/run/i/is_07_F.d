// $HeadURL$
// $Date$
// $Author$

// @author@	<sean@f4.ca>
// @date@	2006-03-10
// @uri@	news:bug-31-3@http.d.puremagic.com/bugzilla/

module dstress.run.i.is_07_F;

enum T{ DUMMY
}

int main(){
	if(!is(T == enum)){
		assert(0);
	}

	return 0;
}
