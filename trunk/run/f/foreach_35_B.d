// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-04-08
// @uri@	news:bug-95-3@http.d.puremagic.com/bugzilla/

module dstress.run.f.foreach_35_B;

int main(){
	int[int] array;
	foreach(int elem; array){
		assert(0);
	}

	return 0;
}

