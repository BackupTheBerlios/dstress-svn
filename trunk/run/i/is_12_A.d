// $HeadURL$
// $Date$
// $Author$

// @author@	<sean@f4.ca>
// @date@	2006-03-10
// @uri@	news:bug-31-3@http.d.puremagic.com/bugzilla/

module dstress.run.i.is_12_A;

void delegate() T;

int main(){
	if(is(T == typedef)){
		assert(0);
	}

	return 0;
}
