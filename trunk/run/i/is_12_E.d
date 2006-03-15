// $HeadURL$
// $Date$
// $Author$

// @author@	<sean@f4.ca>
// @date@	2006-03-10
// @uri@	news:bug-31-3@http.d.puremagic.com/bugzilla/

module dstress.run.i.is_12_E;

void delegate() T;

int main(){
	if(is(T == interface)){
		assert(0);
	}

	return 0;
}
