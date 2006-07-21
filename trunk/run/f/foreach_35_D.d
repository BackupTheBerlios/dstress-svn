// $HeadURL$
// $Date$
// $Author$

// @author@	<ericanderton@yahoo.com>
// @date@	2006-04-08
// @uri@	news:bug-95-3@http.d.puremagic.com/bugzilla/

module dstress.run.f.foreach_35_D;

int main(){
	int[int] array;
	array[2] = 3;
	array.remove(2);

	if(array.keys.length != 0){
		assert(0);
	}

	foreach(int elem; array){
		assert(0);
	}

	return 0;
}

